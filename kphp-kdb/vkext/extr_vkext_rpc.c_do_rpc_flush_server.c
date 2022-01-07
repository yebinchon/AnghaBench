
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {scalar_t__ status; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int rpc_flush ;
 scalar_t__ rpc_flush_out_force (struct rpc_server*,double) ;
 int rpc_server_failure (struct rpc_server*) ;
 scalar_t__ rpc_status_connected ;

int do_rpc_flush_server (struct rpc_server *server, double timeout) {
  ADD_CNT (rpc_flush);
  START_TIMER (rpc_flush);
  if (!server || server->status != rpc_status_connected) {
    END_TIMER (rpc_flush);
    return 0;
  }
  if (rpc_flush_out_force (server, timeout) < 0) {
    rpc_server_failure (server);
    END_TIMER (rpc_flush);
    return -1;
  } else {
    END_TIMER (rpc_flush);
    return 1;
  }
}
