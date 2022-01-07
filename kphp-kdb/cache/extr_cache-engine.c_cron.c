
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ t; } ;


 int binlog_disabled ;
 scalar_t__ cache_acounters_update_step (int) ;
 int cache_garbage_collector_step (int) ;
 int cache_stats_relax () ;
 int create_all_outbound_connections () ;
 int cron_acounter_update_calls ;
 int dyn_garbage_collector () ;
 int flush_binlog () ;
 TYPE_1__ get_top_access_stat ;

__attribute__((used)) static void cron (void) {
  create_all_outbound_connections ();
  if (get_top_access_stat.t) {
    cron_acounter_update_calls += cache_acounters_update_step (500);
  }
  if (!binlog_disabled) {
    cache_garbage_collector_step (500);
  }
  flush_binlog ();
  dyn_garbage_collector ();
  cache_stats_relax ();
}
