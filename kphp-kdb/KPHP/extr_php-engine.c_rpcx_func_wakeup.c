
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcs_data {int * extra; } ;
struct connection {scalar_t__ status; scalar_t__ pending_queries; } ;
typedef int php_worker ;


 struct rpcs_data* RPCS_DATA (struct connection*) ;
 int assert (int) ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_wait_net ;
 int php_worker_main (int *) ;
 int rpcx_at_query_end (struct connection*) ;

int rpcx_func_wakeup (struct connection *c) {
  struct rpcs_data *D = RPCS_DATA(c);

  assert (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;

  php_worker *worker = D->extra;
  int res = php_worker_main (worker);
  if (res == 1) {
    rpcx_at_query_end (c);
  } else {
    assert (c->pending_queries >= 0 && c->status == conn_wait_net);
  }
  return 0;
}
