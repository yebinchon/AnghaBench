
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct related_binlog {int kfs_replica; int update_generation; int path; } ;


 int assert (int) ;
 int load_binlog_data (struct related_binlog*) ;
 int sigrtmax_cnt ;
 scalar_t__ update_replica (int ,int ) ;
 int vkprintf (int,char*,int ) ;

int update_related_binlog (struct related_binlog *R) {
  vkprintf (1, "reloading kfs data for %s\n", R->path);
  R->update_generation = sigrtmax_cnt;
  assert (update_replica (R->kfs_replica, 0) >= 0);
  return load_binlog_data (R);
}
