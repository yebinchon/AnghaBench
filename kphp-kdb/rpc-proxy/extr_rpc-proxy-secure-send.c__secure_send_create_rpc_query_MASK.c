#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct secure_send_extra {scalar_t__ data_size; int binlog; int /*<<< orphan*/  data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  pid; int /*<<< orphan*/  binlog_pos; scalar_t__ state; } ;
struct rpc_query {int /*<<< orphan*/  old_qid; int /*<<< orphan*/  qid; struct secure_send_extra* extra; } ;
struct lev_query_tx {scalar_t__ data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  pid; int /*<<< orphan*/  cluster_id; int /*<<< orphan*/  old_qid; int /*<<< orphan*/  qid; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  remote_pid; } ;
struct TYPE_4__ {scalar_t__ out_pos; } ;

/* Variables and functions */
 TYPE_3__* CC ; 
 int /*<<< orphan*/  LEV_QUERY_TX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TL_OUT_CONN ; 
 scalar_t__ TL_OUT_TYPE ; 
 struct lev_query_tx* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int binlog_mode_on ; 
 struct rpc_query* FUNC3 (long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  secure_send_s0 ; 
 TYPE_1__ tl ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ tl_type_conn ; 
 struct secure_send_extra* FUNC11 (int) ; 

struct rpc_query *FUNC12 (long long new_qid, int binlog) {
  struct rpc_query *q = FUNC3 (new_qid);
  if (!q) { return q; }
  struct secure_send_extra *E = FUNC11 (sizeof (*E));
  E->state = 0;
  E->data_size = tl.out_pos;
  E->data = FUNC7 (E->data_size);
  FUNC9 (E->data, 0, E->data_size);
  FUNC2 (TL_OUT_TYPE == tl_type_conn);
  E->pid = FUNC0(TL_OUT_CONN)->remote_pid;
  E->timeout = CC->timeout;
  E->binlog = 0;
  FUNC2 (FUNC10 (E->data, E->data_size) == E->data_size);
  secure_send_s0 ++;
/*  int i;
  for (i = 0; i < E->data_size / 4; i++) {
    fprintf (stderr, "%08x ", ((int *)E->data)[i]);
  }
  fprintf (stderr, "\n");*/
  q->extra = E;
  if (binlog) {
    E->binlog_pos = FUNC6 ();
    FUNC5 (E->binlog_pos, 0);
    struct lev_query_tx *L = FUNC1 (LEV_QUERY_TX, sizeof (*L) + E->data_size, 0);
    L->qid = q->qid;
    L->old_qid = q->old_qid;
    L->cluster_id = CC->id;    
    L->data_size = E->data_size;
    L->pid = E->pid;
    L->timeout = E->timeout;
    FUNC8 (L->data, E->data, E->data_size);
    E->binlog = 1;
    if (binlog_mode_on & 2) {
      FUNC4 (0);
    }
  }
  return q;
}