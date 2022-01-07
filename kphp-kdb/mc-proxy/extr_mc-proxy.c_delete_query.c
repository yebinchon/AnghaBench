
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_query {int dummy; } ;


 int active_queries ;
 int delete_conn_query (struct conn_query*) ;
 int zfree (struct conn_query*,int) ;

int delete_query (struct conn_query *q) {
  active_queries--;
  delete_conn_query (q);
  zfree (q, sizeof (*q));
  return 0;
}
