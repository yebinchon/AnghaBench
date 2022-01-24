#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct secure_receive_answer {int answer_len; char* answer; int binlog; int /*<<< orphan*/  answer_op; int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; int /*<<< orphan*/  binlog_pos; scalar_t__ h; } ;
struct rpc_query {int /*<<< orphan*/  pid; int /*<<< orphan*/  old_qid; } ;
struct lev_answer_tx {int answer_len; char* answer; int /*<<< orphan*/  op; int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; } ;
struct TYPE_4__ {TYPE_1__* h; } ;
struct TYPE_3__ {int /*<<< orphan*/  real_op; } ;

/* Variables and functions */
 TYPE_2__* CQ ; 
 int /*<<< orphan*/  LEV_ANSWER_TX ; 
 int /*<<< orphan*/  RPC_FUN_NEXT ; 
 struct lev_answer_tx* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int binlog_mode_on ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  secure_answer_allocated ; 
 int /*<<< orphan*/  secure_receive_answer_tree ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 () ; 
 int FUNC10 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct secure_receive_answer*,int /*<<< orphan*/ ) ; 
 struct secure_receive_answer* FUNC12 (int) ; 

int FUNC13 (void **IP, void **Data, int binlog) {
  struct rpc_query *q = *Data;
  struct secure_receive_answer *A = FUNC12 (sizeof (*A));
  A->qid = q->old_qid;
  A->pid = q->pid;
  //A->h = tl_query_header_dup (CQ->h);
  A->h = 0;
  static char buf[(1 << 17)];
  int r = FUNC10 (CQ->h, (int *)buf, (1 << 17));
  FUNC1 (r >= 0);
  A->answer_op = CQ->h->real_op;
  A->answer_len = FUNC9 () + r;
  A->answer = FUNC6 (A->answer_len);
  A->binlog = 0;
  FUNC7 (A->answer, buf, r);

  //int t = 
  FUNC8 (A->answer + r, A->answer_len - r);
  secure_receive_answer_tree = FUNC11 (secure_receive_answer_tree, A, FUNC5 ());
  secure_answer_allocated ++;
  if (binlog) {
    A->binlog_pos  = FUNC4 ();
    FUNC3 (A->binlog_pos, 0);
    struct lev_answer_tx *L = FUNC0 (LEV_ANSWER_TX, sizeof (*L) + A->answer_len, 0);
    L->qid = A->qid;
    L->pid = A->pid;
    L->op = A->answer_op;
    L->answer_len = A->answer_len;
    FUNC7 (L->answer, A->answer, A->answer_len);
    A->binlog = 1;
    if (binlog_mode_on & 2) {
      FUNC2 (0);
    }
  }
  RPC_FUN_NEXT;
}