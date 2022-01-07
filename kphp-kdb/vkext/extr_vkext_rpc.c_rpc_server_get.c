
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int dummy; } ;


 int last_server_fd ;
 struct rpc_server** servers ;

struct rpc_server *rpc_server_get (int fd) {
  if (fd < 0 || fd >= last_server_fd) {
    return 0;
  }
  return servers[fd];
}
