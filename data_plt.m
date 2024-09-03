clear all; clc; close all;

% .mat 파일 로드
data_path = '2024-08-16/4/data.mat';
data = load(data_path);

% 로드된 데이터를 이용해 plot 생성
% 
% window_size = 1000;
% avg_total_res = double(data.sim_res);
% % avg_optimal_res = double(data.sim_optimal);
% 
% moving_avg = movmean(avg_total_res,window_size);
% 
% plot(avg_total_res); hold on;
% plot(moving_avg);
% plot(avg_optimal_res);
lifting_time = data.stable_lifting_time;
mv_mean_lift = movmean(lifting_time,20);
box_z_pos = data.box_z_pos;
mv_mean_box_z = movmean(box_z_pos,20);
figure(1)
plot(mv_mean_lift); 

figure(2)

plot(mv_mean_box_z)
ylim([0,3]);