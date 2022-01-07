
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcs_data {scalar_t__ query_type; } ;
struct TYPE_2__ {scalar_t__ total_bytes; } ;
struct connection {int flags; TYPE_1__ Out; int status; scalar_t__ pending_queries; scalar_t__ generation; } ;


 int C_WANTWR ;
 struct mcs_data* MCS_DATA (struct connection*) ;
 int assert (int) ;
 int clear_connection_timeout (struct connection*) ;
 scalar_t__ conn_generation ;
 int conn_reading_query ;
 int fprintf (int ,char*,struct connection*) ;
 scalar_t__ mct_get_resume ;
 int stderr ;
 int verbosity ;

int bayes_engine_wakeup (struct connection *c) {
  struct mcs_data *D = MCS_DATA (c);

  if (verbosity > 1) {
    fprintf (stderr, "bayes_engine_wakeup (%p)\n", c);
  }

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  c->status = conn_reading_query;
  assert (D->query_type == mct_get_resume);
  clear_connection_timeout (c);

  if (c->Out.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }

  return 0;
}
