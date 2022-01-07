
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_query {scalar_t__ outbound; } ;


 int insert_conn_query_into_list (struct conn_query*,struct conn_query*) ;
 int vkprintf (int,char*,struct conn_query*) ;

int insert_conn_query (struct conn_query *q) {
  vkprintf (2, "insert_conn_query(%p)\n", q);
  struct conn_query *h = (struct conn_query *) q->outbound;
  return insert_conn_query_into_list (q, h);
}
