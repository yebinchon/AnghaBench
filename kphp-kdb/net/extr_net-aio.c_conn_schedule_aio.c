
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int status; scalar_t__ pending_queries; scalar_t__ generation; } ;
struct conn_query_functions {int dummy; } ;
struct aio_connection {int dummy; } ;


 scalar_t__ conn_generation ;
 int conn_wait_aio ;
 int create_aio_query (struct aio_connection*,struct connection*,double,struct conn_query_functions*) ;
 int fprintf (int ,char*,struct aio_connection*,struct connection*) ;
 int stderr ;
 int verbosity ;

int conn_schedule_aio (struct aio_connection *a, struct connection *c, double timeout, struct conn_query_functions *cq) {
  if (verbosity > 1) {
    fprintf (stderr, "in conn_schedule_aio(%p,%p)\n", a, c);
  }

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  create_aio_query (a, c, timeout, cq);
  c->status = conn_wait_aio;

  return -1;
}
