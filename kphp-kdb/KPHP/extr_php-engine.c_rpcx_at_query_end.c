
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcs_data {int * extra; } ;
struct connection {scalar_t__ status; int flags; scalar_t__ pending_queries; scalar_t__ generation; } ;


 int C_REPARSE ;
 struct rpcs_data* RPCS_DATA (struct connection*) ;
 int assert (int) ;
 int clear_connection_timeout (struct connection*) ;
 scalar_t__ conn_generation ;
 scalar_t__ conn_wait_net ;
 int has_pending_scripts () ;
 int lease_ready_flag ;
 int run_rpc_lease () ;

void rpcx_at_query_end (struct connection *c) {
  struct rpcs_data *D = RPCS_DATA(c);

  clear_connection_timeout (c);
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  D->extra = ((void*)0);

  if (!has_pending_scripts()) {
    lease_ready_flag = 1;
    run_rpc_lease();
  }
  c->flags |= C_REPARSE;
  assert (c->status != conn_wait_net);
}
