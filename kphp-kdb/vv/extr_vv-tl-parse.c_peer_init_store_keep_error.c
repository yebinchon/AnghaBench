
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_peer {int PID; } ;
struct rpc_target {int dummy; } ;
struct connection {int dummy; } ;


 struct connection* rpc_target_choose_connection (struct rpc_target*,int *) ;
 struct rpc_target* rpc_target_lookup (int *) ;
 int tl_store_init_keep_error (struct connection*,long long) ;

int peer_init_store_keep_error (struct tl_peer *self, long long qid) {
  struct rpc_target *T = rpc_target_lookup (&self->PID);
  if (!T) {
    return -1;
  }
  struct connection *c = rpc_target_choose_connection (T, &self->PID);
  if (!c) {
    return -1;
  }
  tl_store_init_keep_error (c, qid);
  return 0;
}
