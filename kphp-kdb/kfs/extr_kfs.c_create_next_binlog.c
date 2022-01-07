
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_hash_t ;
typedef int kfs_file_handle_t ;


 int create_next_binlog_ext (int ,long long,int ,int ,int ) ;

kfs_file_handle_t create_next_binlog (kfs_file_handle_t F, long long start_log_pos, kfs_hash_t new_file_hash) {
  return create_next_binlog_ext (F, start_log_pos, new_file_hash, 0, 0);
}
