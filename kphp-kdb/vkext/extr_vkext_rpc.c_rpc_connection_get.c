
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_connection {int dummy; } ;


 int rpc_connection_tree ;
 struct rpc_connection** tree_lookup_value_connection (int ,void*) ;

struct rpc_connection *rpc_connection_get (int fd) {
  struct rpc_connection **T = tree_lookup_value_connection (rpc_connection_tree, (void *)&fd);
  return T ? *T : 0;
}
