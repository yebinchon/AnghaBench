
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_query {int dummy; } ;


 int GATHER_QUERY (struct conn_query*) ;
 int delete_conn_query (struct conn_query*) ;
 int free_gather (int ) ;
 int zfree (struct conn_query*,int) ;

int delete_search_query (struct conn_query *q) {
  free_gather (GATHER_QUERY(q));
  delete_conn_query (q);
  zfree (q, sizeof (*q));
  return 0;
}
