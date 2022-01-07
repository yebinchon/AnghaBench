
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {scalar_t__ extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef TYPE_2__ net_ansgen_t ;
struct TYPE_4__ {int (* error ) (TYPE_2__*,char*) ;} ;


 int pnet_query_answer (struct conn_query*) ;
 int pnet_query_delete (struct conn_query*) ;
 int stub1 (TYPE_2__*,char*) ;

int pnet_query_term (struct conn_query *q) {
  net_ansgen_t *net_ansgen = (net_ansgen_t *)q->extra;
  net_ansgen->func->error (net_ansgen, "Connection closed by server");

  pnet_query_answer (q);
  pnet_query_delete (q);

  return 0;
}
