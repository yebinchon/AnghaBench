
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * active_pids ;
 int active_pnum ;
 int get_precise_time (int) ;
 int last_check_time ;
 int try_reap (int ) ;

int reap_all (void) {
  int cnt = 0, i;
  last_check_time = get_precise_time (1000000);
  for (i = 0; i < active_pnum; i++) {
    if (try_reap (active_pids[i]) > 1) {
      cnt++;
    }
  }
  return cnt;
}
