
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ total_bytes; } ;
struct connection {int flags; TYPE_1__ Out; int status; scalar_t__ pending_queries; scalar_t__ generation; } ;


 int C_WANTWR ;
 int clear_connection_timeout (struct connection*) ;
 scalar_t__ conn_generation ;
 int conn_reading_query ;
 int fprintf (int ,char*,struct connection*) ;
 int stderr ;
 int verbosity ;

int news_wakeup (struct connection *c) {

  if (verbosity > 1) {
    fprintf (stderr, "news_wakeup (%p)\n", c);
  }

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  c->status = conn_reading_query;

  clear_connection_timeout (c);

  if (c->Out.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }

  return 0;
}
