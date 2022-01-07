
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
struct conn_target {int dummy; } ;


 struct conn_target* Targets ;
 struct connection* get_target_connection (struct conn_target*,int ) ;
 int rpc_send_lease_stats (struct connection*) ;

void rpct_lease_stats (int target_fd) {
  if (target_fd == -1) {
    return;
  }
  struct conn_target *target = &Targets[target_fd];
  struct connection *conn = get_target_connection (target, 0);
  if (conn != ((void*)0)) {
    rpc_send_lease_stats (conn);
  }
}
