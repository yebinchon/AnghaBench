
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refcnt; scalar_t__ ready_outbound_connections; scalar_t__ type; } ;


 TYPE_1__* Targets ;
 int allocated_targets ;
 scalar_t__ create_new_connections (TYPE_1__*) ;
 int get_utime_monotonic () ;
 scalar_t__ ready_outbound_connections ;
 scalar_t__ ready_targets ;

int create_all_outbound_connections (void) {
  int count = 0, i;
  get_utime_monotonic ();
  ready_outbound_connections = ready_targets = 0;
  for (i = 0; i < allocated_targets; i++) {
    if (Targets[i].type && Targets[i].refcnt > 0) {
      count += create_new_connections (&Targets[i]);
      if (Targets[i].ready_outbound_connections) {
        ready_outbound_connections += Targets[i].ready_outbound_connections;
        ready_targets++;
      }
    }
  }
  return count;
}
