#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rpc_cluster_bucket {TYPE_1__* methods; } ;
struct rpc_cluster {int tot_buckets; struct rpc_cluster_bucket* buckets; } ;
struct TYPE_8__ {int s_addr; } ;
struct conn_target {int custom_field; int port; TYPE_2__ target; int /*<<< orphan*/  ready_outbound_connections; int /*<<< orphan*/  min_connections; } ;
struct TYPE_10__ {int (* forward ) () ;int /*<<< orphan*/ * fun_pos; } ;
struct TYPE_12__ {TYPE_4__ methods; } ;
struct TYPE_11__ {TYPE_3__* h; int /*<<< orphan*/  remote_pid; int /*<<< orphan*/  in_type; } ;
struct TYPE_9__ {int /*<<< orphan*/  qid; } ;
struct TYPE_7__ {int (* get_host ) (struct rpc_cluster_bucket*) ;int (* get_port ) (struct rpc_cluster_bucket*) ;int /*<<< orphan*/  (* get_actor ) (struct rpc_cluster_bucket*) ;} ;

/* Variables and functions */
 TYPE_6__* CC ; 
 TYPE_5__* CQ ; 
 size_t RPC_FUN_PREFORWARD_CHECK ; 
 size_t RPC_FUN_PREFORWARD_EDIT ; 
 size_t RPC_FUN_PREFORWARD_VIEW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TL_ENGINE_NOP 134 
#define  TL_ENGINE_STAT 133 
 int TL_MAYBE_FALSE ; 
 int TL_MAYBE_TRUE ; 
#define  TL_RPC_PROXY_GET_BAD_TARGETS 132 
#define  TL_RPC_PROXY_GET_CLUSTERS 131 
#define  TL_RPC_PROXY_GET_CLUSTER_SERVERS 130 
#define  TL_RPC_PROXY_GET_CLUSTER_SIZE 129 
#define  TL_RPC_PROXY_GET_CLUSTER_STATS 128 
 int TL_TRUE ; 
 int TL_VECTOR ; 
 struct conn_target* Targets ; 
 int allocated_targets ; 
 int /*<<< orphan*/  FUNC1 (struct conn_target*) ; 
 struct rpc_cluster* FUNC2 (long long) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_cluster*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct rpc_cluster_bucket*) ; 
 int FUNC7 (struct rpc_cluster_bucket*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_cluster_bucket*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 long long FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20 (void) {
  int op = FUNC14 ();
  long long t;
  struct rpc_cluster *C;
  int i;
  switch (op) {
  case TL_ENGINE_NOP:
    FUNC12 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    FUNC18 (TL_TRUE);
    FUNC16 ();
    return 0;
  case TL_RPC_PROXY_GET_CLUSTERS:
    FUNC12 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    FUNC10 ();
    FUNC16 ();
    return 0;
  case TL_RPC_PROXY_GET_CLUSTER_SIZE:
    FUNC12 ();
    t = FUNC13 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);

    C = FUNC2 (t);
    if (!C) {
      FUNC18 (TL_MAYBE_FALSE);
    } else {
      FUNC18 (TL_MAYBE_TRUE);
      FUNC18 (C->tot_buckets);
    }
    FUNC16 ();
    return 0;
  case TL_RPC_PROXY_GET_CLUSTER_SERVERS:
    FUNC12 ();
    t = FUNC13 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    C = FUNC2 (t);
    if (!C) {
      FUNC18 (TL_MAYBE_FALSE);
    } else {
      FUNC18 (TL_MAYBE_TRUE);
      FUNC18 (C->tot_buckets);
      for (i = 0; i < C->tot_buckets; i++) {
        struct rpc_cluster_bucket *B = &C->buckets[i];
        FUNC18 (B->methods->get_host (B));
        FUNC18 (B->methods->get_port (B)); 
        FUNC19 (B->methods->get_actor (B)); 
      }
    }
    FUNC16 ();
    return 0;
  case TL_RPC_PROXY_GET_CLUSTER_STATS:
    FUNC12 ();
    t = FUNC13 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    C = FUNC2 (t);
    if (!C) {
      FUNC18 (TL_MAYBE_FALSE);
    } else {
      FUNC18 (TL_MAYBE_TRUE);
      FUNC4 (C);
    }
    FUNC16 ();
    return 0;
  case TL_RPC_PROXY_GET_BAD_TARGETS:
    FUNC12 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    FUNC18 (TL_VECTOR);
    {
      int *count = FUNC17 (4);
      *count = 0;
      int i;
      for (i = 0; i < allocated_targets; i++) {
        struct conn_target *S = &Targets[i];
        FUNC1 (S);
        if (S->min_connections > 0 && !S->ready_outbound_connections) {
          if (S->target.s_addr) {
            int x =  (S->target.s_addr);            
            FUNC18 (FUNC3 (x));
          } else {
            FUNC18 (S->custom_field);
          }
          FUNC18 (S->port);
          (*count) ++;
        }
      }
    }
    FUNC16 ();
    return 0;
  case TL_ENGINE_STAT:
    FUNC12 ();
    FUNC11 ();
    //tl_store_init_any_keep_error (CQ->in_type, CQ->in, CQ->h->qid);
    FUNC15 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    FUNC5 ();
    FUNC16 ();
    return 0;
  }
  int x;
  x = FUNC0(CC->methods.fun_pos[RPC_FUN_PREFORWARD_CHECK], 0);
  if (x < 0) { return x; }
  x = FUNC0(CC->methods.fun_pos[RPC_FUN_PREFORWARD_EDIT], 0);
  if (x < 0) { return x; }
  x = FUNC0(CC->methods.fun_pos[RPC_FUN_PREFORWARD_VIEW], 0);
  if (x < 0) { return x; }
  return CC->methods.forward ();
}