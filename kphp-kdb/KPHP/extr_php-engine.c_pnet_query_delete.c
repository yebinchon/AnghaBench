
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {int * extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef TYPE_2__ net_ansgen_t ;
struct TYPE_4__ {int (* free ) (TYPE_2__*) ;} ;


 int delete_conn_query (struct conn_query*) ;
 int stub1 (TYPE_2__*) ;
 int zfree (struct conn_query*,int) ;

void pnet_query_delete (struct conn_query *q) {
  net_ansgen_t *ansgen = (net_ansgen_t *)q->extra;

  ansgen->func->free (ansgen);
  q->extra = ((void*)0);

  delete_conn_query (q);
  zfree (q, sizeof (*q));
}
