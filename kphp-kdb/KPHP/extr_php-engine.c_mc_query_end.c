
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {scalar_t__ extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef TYPE_2__ mc_ansgen_t ;
struct TYPE_4__ {int (* end ) (TYPE_2__*) ;} ;


 int pnet_query_check (struct conn_query*) ;
 int stub1 (TYPE_2__*) ;

int mc_query_end (struct conn_query *q) {
  mc_ansgen_t *ansgen = (mc_ansgen_t *)q->extra;
  ansgen->func->end (ansgen);

  return pnet_query_check (q);
}
