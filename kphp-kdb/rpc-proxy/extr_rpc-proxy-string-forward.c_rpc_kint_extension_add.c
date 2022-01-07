
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster_create {int lock; size_t* funs_last; int ** funs; } ;
struct rpc_cluster {int cluster_mode; void** extensions_extra; } ;


 int RPC_FUN_STRING_FORWARD ;
 int assert (int) ;
 size_t extension_firstint_num ;
 int rpc_fun_kint_forward ;

int rpc_kint_extension_add (struct rpc_cluster *C, struct rpc_cluster_create *Z, int flags, int k) {
  if (Z->lock & (1 << RPC_FUN_STRING_FORWARD)) {
    return -1;
  }
  Z->lock |= (1 << RPC_FUN_STRING_FORWARD);

  assert (Z->funs_last[RPC_FUN_STRING_FORWARD] > 0);
  Z->funs[RPC_FUN_STRING_FORWARD][--Z->funs_last[RPC_FUN_STRING_FORWARD]] = rpc_fun_kint_forward;
  C->extensions_extra[extension_firstint_num] = (void *)(long)k;
  C->cluster_mode = k + 1;
  return 0;
}
