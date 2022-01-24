#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_cluster_create {int lock; size_t* funs_last; int /*<<< orphan*/ ** funs; } ;
struct rpc_cluster {int cluster_mode; void** extensions_extra; } ;

/* Variables and functions */
 int RPC_FUN_STRING_FORWARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t extension_firstint_num ; 
 int /*<<< orphan*/  rpc_fun_kint_forward ; 

int FUNC1 (struct rpc_cluster *C, struct rpc_cluster_create *Z, int flags, int k) {
  if (Z->lock & (1 << RPC_FUN_STRING_FORWARD)) {
    return -1;
  }
  Z->lock |= (1 << RPC_FUN_STRING_FORWARD);
   
  FUNC0 (Z->funs_last[RPC_FUN_STRING_FORWARD] > 0);
  Z->funs[RPC_FUN_STRING_FORWARD][--Z->funs_last[RPC_FUN_STRING_FORWARD]] = rpc_fun_kint_forward;
  C->extensions_extra[extension_firstint_num] = (void *)(long)k;
  C->cluster_mode = k + 1;
  return 0;
}