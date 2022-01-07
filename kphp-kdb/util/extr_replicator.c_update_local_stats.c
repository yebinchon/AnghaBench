
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WStats ;
 int compute_slaves_stats (int*) ;
 int slave_mode ;
 int update_local_stats_copy (scalar_t__,int*) ;
 int worker_id ;

void update_local_stats (void) {
  if (!slave_mode) {
    return;
  }
  static int slave_cnt[4];
  compute_slaves_stats (slave_cnt);

  update_local_stats_copy (WStats + worker_id * 2, slave_cnt);
  update_local_stats_copy (WStats + worker_id * 2 + 1, slave_cnt);
}
