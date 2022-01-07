
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int rpc_target_delete_conn (struct connection*) ;

int rpc_proxy_close_conn (struct connection *c, int who) {
  rpc_target_delete_conn (c);
  return 0;
}
