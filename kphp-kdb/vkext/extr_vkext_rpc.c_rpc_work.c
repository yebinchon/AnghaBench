
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int dummy; } ;


 int ADD_CNT (int (*) (struct rpc_server*,int,double)) ;
 int rpc_read (struct rpc_server*,int,double) ;
 int rpc_server_failure (struct rpc_server*) ;

__attribute__((used)) static int rpc_work (struct rpc_server *server, int force_block_read, double timeout) {
  ADD_CNT(rpc_work);
  int x = rpc_read (server, force_block_read, timeout);
  if (x < 0) {
    rpc_server_failure (server);
    return -1;
  } else if (x == 0) {
    return 0;
  } else {
    return 1;
  }
}
