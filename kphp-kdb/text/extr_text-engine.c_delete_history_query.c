
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_query {int requester; } ;


 int delete_conn_query (struct conn_query*) ;
 int fprintf (int ,char*,struct conn_query*,int ) ;
 int pending_http_queries ;
 int stderr ;
 int verbosity ;
 int zfree (struct conn_query*,int) ;

int delete_history_query (struct conn_query *q) {
  if (verbosity > 1) {
    fprintf (stderr, "delete_history_query(%p,%p)\n", q, q->requester);
  }

  pending_http_queries--;
  delete_conn_query (q);
  zfree (q, sizeof (*q));
  return 0;
}
