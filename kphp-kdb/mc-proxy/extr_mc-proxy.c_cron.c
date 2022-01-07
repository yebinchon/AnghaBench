
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adjust_cluster_stats () ;
 int dyn_garbage_collector () ;

void cron (void) {
  dyn_garbage_collector ();
  adjust_cluster_stats ();
}
