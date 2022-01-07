
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


 int pnet_query_check (struct conn_query*) ;
 int stub1 (TYPE_2__*,char*) ;

int mc_query_error (struct conn_query *q) {
  net_ansgen_t *ansgen = (net_ansgen_t *)q->extra;
  ansgen->func->error (ansgen, "some protocol error");

  return pnet_query_check (q);
}
