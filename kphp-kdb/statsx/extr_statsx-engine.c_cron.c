
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_COUNTERS_ALLOCATED ;
 int flush_view_counters () ;
 scalar_t__ free_LRU () ;
 int now ;
 scalar_t__ tot_counters_allocated ;

void cron (void) {
  static int last_viewcnt_flush = 0;
  if (now >= last_viewcnt_flush + 60) {
    flush_view_counters();
    last_viewcnt_flush = now - now % 60;
  }
  while (tot_counters_allocated >= MAX_COUNTERS_ALLOCATED && free_LRU()) {
  }



}
