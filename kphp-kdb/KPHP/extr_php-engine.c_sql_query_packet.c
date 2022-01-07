
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {scalar_t__ extra; } ;
struct TYPE_5__ {TYPE_1__* func; } ;
typedef TYPE_2__ sql_ansgen_t ;
typedef int data_reader_t ;
struct TYPE_4__ {int (* packet ) (TYPE_2__*,int *) ;} ;


 int pnet_query_check (struct conn_query*) ;
 int stub1 (TYPE_2__*,int *) ;

int sql_query_packet (struct conn_query *q, data_reader_t *reader) {
  sql_ansgen_t *ansgen = (sql_ansgen_t *)q->extra;
  ansgen->func->packet (ansgen, reader);

  return pnet_query_check (q);
}
