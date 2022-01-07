
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conn_query {scalar_t__ extra; } ;
struct TYPE_2__ {int state; } ;
typedef TYPE_1__ net_ansgen_t ;
typedef int ansgen_state_t ;


 int pnet_query_answer (struct conn_query*) ;
 int pnet_query_delete (struct conn_query*) ;




int pnet_query_check (struct conn_query *q) {
  net_ansgen_t *net_ansgen = (net_ansgen_t *)q->extra;

  ansgen_state_t state = net_ansgen->state;
  switch (state) {
    case 130:
    case 129:
      pnet_query_answer (q);
      pnet_query_delete (q);
      break;

    case 128:
      break;
  }

  return state == 129;
}
