
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
struct conn_target {int dummy; } ;


 struct conn_target* Targets ;
 struct connection* get_target_connection (struct conn_target*,int ) ;
 int rpc_send_ready (struct connection*) ;

int rpct_ready (int target_fd) {
  if (target_fd == -1) {
    return -1;
  }
  struct conn_target *target = &Targets[target_fd];
  struct connection *conn = get_target_connection (target, 0);
  if (conn == ((void*)0)) {
    return -2;
  }
  rpc_send_ready (conn);
  return 0;
}
