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
struct secure_receive_answer {int answer_len; char* answer; int binlog; int /*<<< orphan*/  answer_op; int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; int /*<<< orphan*/  binlog_pos; scalar_t__ h; } ;
struct rpc_query {scalar_t__ start_time; int /*<<< orphan*/  pid; int /*<<< orphan*/  old_qid; } ;
struct lev_answer_tx {int answer_len; char* answer; int /*<<< orphan*/  op; int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_ANSWER_TX ; 
 int /*<<< orphan*/  RPC_FUN_NEXT ; 
 int /*<<< orphan*/  RPC_REQ_ERROR_WRAPPED ; 
 int TL_ERROR_QUERY_TIMEOUT ; 
 struct lev_answer_tx* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int binlog_mode_on ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  secure_answer_allocated ; 
 int /*<<< orphan*/  secure_receive_answer_tree ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct secure_receive_answer*,int /*<<< orphan*/ ) ; 
 struct secure_receive_answer* FUNC13 (int) ; 

int FUNC14 (void **IP, void **Data, int binlog) {
  struct rpc_query *q = *Data;
  struct secure_receive_answer *A = FUNC13 (sizeof (*A));
  A->h = 0;
  A->qid = q->old_qid;
  A->pid = q->pid;
  A->answer_op = RPC_REQ_ERROR_WRAPPED;
  static char buf [1000];
  FUNC9 (buf + 1, "Query timeout: working_time = %lf", precise_now - q->start_time);
  FUNC11 (buf + 1, TL_ERROR_QUERY_TIMEOUT);
  int len = FUNC10 (buf + 1) + 1;
  int pad = ((len + 3) & ~3) - len;
  FUNC8 (buf + len, 0, pad);
  buf[0] = len;
  len += pad;
  FUNC1 (len % 4 == 0);
  A->answer_len = 4 + len;
  A->answer = FUNC6 (A->answer_len);
  A->binlog = 0;
  *(int *)A->answer = TL_ERROR_QUERY_TIMEOUT;
  FUNC7 (((char *)(A->answer)) + 4, buf, len);
  secure_receive_answer_tree = FUNC12 (secure_receive_answer_tree, A, FUNC5 ());
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