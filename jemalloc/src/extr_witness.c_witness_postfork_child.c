
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int forking; int witnesses; } ;
typedef TYPE_1__ witness_tsd_t ;
typedef int witness_list_t ;


 int config_debug ;
 int ql_new (int *) ;

void
witness_postfork_child(witness_tsd_t *witness_tsd) {
 if (!config_debug) {
  return;
 }

 witness_list_t *witnesses;

 witnesses = &witness_tsd->witnesses;
 ql_new(witnesses);

 witness_tsd->forking = 0;
}
