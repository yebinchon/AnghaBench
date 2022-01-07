
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {scalar_t__ extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef TYPE_2__ net_get_ansgen_t ;
struct TYPE_4__ {int (* done ) (TYPE_2__*) ;} ;


 int assert (int ) ;
 int pnet_query_check (struct conn_query*) ;
 int stub1 (TYPE_2__*) ;

int net_get_query_done (struct conn_query *q) {
  net_get_ansgen_t *ansgen = (net_get_ansgen_t *)q->extra;
  assert (ansgen != ((void*)0));
  assert (ansgen->func != ((void*)0));
  assert (ansgen->func->done != ((void*)0));
  ansgen->func->done (ansgen);

  return pnet_query_check (q);
}
