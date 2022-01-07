
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int generation; scalar_t__ pending_queries; } ;
struct conn_query {int req_generation; struct connection* requester; scalar_t__ extra; } ;


 int conn_generation ;
 int delete_conn_query (struct conn_query*) ;
 int dl_strfree (char*) ;
 int fprintf (int ,char*,struct conn_query*,struct connection*) ;
 int pending_http_queries ;
 int qkey_clear_conn (char*) ;
 int stderr ;
 int str_memory ;
 scalar_t__ strlen (char*) ;
 int verbosity ;
 int zfree (struct conn_query*,int) ;

int delete_history_query (struct conn_query *q) {
  if (verbosity > 1) {
    fprintf (stderr, "delete_history_query (%p,%p)\n", q, q->requester);
  }

  char *kname = (char *)q->extra;
  qkey_clear_conn (kname);
  str_memory -= strlen (kname) + 1;
  dl_strfree (kname);

  pending_http_queries--;
  struct connection *c = q->requester;

  int req_generation = q->req_generation;
  delete_conn_query (q);

  if (c->generation == req_generation) {
    c->generation = ++conn_generation;
    c->pending_queries = 0;
  }
  zfree (q, sizeof (*q));
  return 0;
}
