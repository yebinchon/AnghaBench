
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_query {int requester; } ;


 int delete_conn_query (struct conn_query*) ;
 int vkprintf (int,char*,struct conn_query*,int ) ;
 int zfree (struct conn_query*,int) ;

int delete_pending_query (struct conn_query *q) {
  vkprintf (1, "delete_pending_query(%p,%p)\n", q, q->requester);

  delete_conn_query (q);
  zfree (q, sizeof (*q));
  return 0;
}
