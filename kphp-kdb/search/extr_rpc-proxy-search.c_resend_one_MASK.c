#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct search_extra {int /*<<< orphan*/  limit; int /*<<< orphan*/  mode; int /*<<< orphan*/  op; } ;
struct rpc_query {scalar_t__ extra; } ;
struct gather {int /*<<< orphan*/  wait_num; int /*<<< orphan*/  in_type; int /*<<< orphan*/  qid; int /*<<< orphan*/  pid; TYPE_1__* List; int /*<<< orphan*/  saved_query_len; TYPE_2__* saved_query; struct search_extra* extra; TYPE_2__* header; TYPE_5__* cluster; } ;
struct TYPE_8__ {int tot_buckets; int /*<<< orphan*/ * buckets; } ;
struct TYPE_7__ {long long qid; } ;
struct TYPE_6__ {int bytes; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 TYPE_5__* CC ; 
 int /*<<< orphan*/  RPC_INVOKE_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct rpc_query* FUNC1 (long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  merge_query_type ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC10 (struct gather *G, int i) {
  CC = G->cluster;
  if (i >= CC->tot_buckets) { return 0; }

  long long new_qid = FUNC3 (G->qid);
  if (FUNC5 (&CC->buckets[i], new_qid) <= 0) {
    return 0;
  }
/*  struct rpc_target *S = rpc_target_lookup_target (CC->buckets[i]);
  struct connection *c = rpc_target_choose_connection (S, 0);
  if (!c) { return 0; }*/

  //tl_store_init (c, new_qid);

  G->header->qid = new_qid;
  FUNC0 (G->header);
  FUNC7 (G->header);

  FUNC0 (G->saved_query);
  struct search_extra *extra = G->extra;
  FUNC8 (extra->op);
  FUNC8 (extra->mode);
  FUNC8 (extra->limit);
  FUNC9 (G->saved_query, G->saved_query_len);


  FUNC6 (RPC_INVOKE_REQ);
  if (G->List[i].bytes > 0) {
    FUNC2 (G->List[i].data);
  }
  G->List[i].bytes = -2;

  struct rpc_query *q = FUNC1 (new_qid, G->pid, G->qid, G->in_type, /*G->in,*/ merge_query_type, 0);
  q->extra = FUNC4 (2 * sizeof (void *));
  ((void **)q->extra)[0] = G;
  ((void **)q->extra)[1] = (void *)(long)i;
  G->wait_num ++;
  return 1;
}