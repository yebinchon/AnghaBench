
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
struct conn_target {int dummy; } ;


 scalar_t__ SIGTERM_WAIT_TIMEOUT ;
 struct conn_target* Targets ;
 int do_rpc_stop_lease () ;
 struct connection* get_target_connection (struct conn_target*,int ) ;
 scalar_t__ precise_now ;
 int rpc_client_target ;
 int rpc_send_stopped (struct connection*) ;
 int rpc_stopped ;
 scalar_t__ sigterm_time ;

void rpcc_stop () {
  if (rpc_client_target != -1) {
    struct conn_target *target = &Targets[rpc_client_target];
    struct connection *conn = get_target_connection (target, 0);
    if (conn != ((void*)0)) {
      rpc_send_stopped (conn);
    }
    do_rpc_stop_lease();
  }
  rpc_stopped = 1;
  sigterm_time = precise_now + SIGTERM_WAIT_TIMEOUT;
}
