
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t type; } ;
typedef TYPE_1__ event ;


 int QINC (size_t) ;
 int assert (int) ;
 TYPE_1__** eq ;
 size_t eq_l ;
 int eq_n ;
 scalar_t__ events_mem ;
 int events_memory ;
 scalar_t__ evm_l ;
 scalar_t__ get_event_size (TYPE_1__*) ;
 int * type_size ;
 int upd_q_st_delete (TYPE_1__*,size_t) ;

void event_free (void) {
  assert (eq_n);
  if (*(int *)(events_mem + evm_l) == -1) {
    evm_l = 0;
  }
  event *e = (event *)(events_mem + evm_l);

  assert (eq[eq_l] == e);
  upd_q_st_delete (e, eq_l);
  eq_n--;
  eq[eq_l] = ((void*)0);
  QINC(eq_l);
  type_size[e->type] -= get_event_size (e);
  events_memory -= get_event_size (e);
  evm_l += get_event_size (e);
}
