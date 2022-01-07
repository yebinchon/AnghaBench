
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {scalar_t__ extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef TYPE_2__ net_ansgen_t ;
struct TYPE_4__ {int (* timeout ) (TYPE_2__*) ;} ;


 int delete_conn_query_from_requester (struct conn_query*) ;
 int pnet_query_answer (struct conn_query*) ;
 int stub1 (TYPE_2__*) ;

int pnet_query_timeout (struct conn_query *q) {

  net_ansgen_t *net_ansgen = (net_ansgen_t *)q->extra;
  net_ansgen->func->timeout (net_ansgen);

  pnet_query_answer (q);

  delete_conn_query_from_requester (q);

  return 0;
}
