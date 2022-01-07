
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_file_handle_t ;


 int kfs_close_file (int ,int) ;

int close_binlog (kfs_file_handle_t F, int close_handle) {
  return kfs_close_file (F, close_handle);
}
