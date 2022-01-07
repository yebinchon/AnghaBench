
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_PROCESS_CPUTIME_ID ;
 int STAT_CNT ;
 size_t STAT_PERIOD ;
 int check_child_status () ;
 int create_all_outbound_connections () ;
 scalar_t__ force_write_stats ;
 int fork_write_stats () ;
 int free_by_time (int) ;
 int get_utime (int ) ;
 int memset (int*,int ,int) ;
 size_t now ;
 int** stats ;
 int* stats_now ;

void cron (void) {
  create_all_outbound_connections();

  free_by_time (137);







  if (force_write_stats) {
    fork_write_stats();
    force_write_stats = 0;
  }
  check_child_status();
}
