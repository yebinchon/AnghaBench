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
struct process_id {int dummy; } ;
struct secure_receive_answer {long long qid; int answer_op; int binlog; int answer_len; int /*<<< orphan*/  binlog_pos; int /*<<< orphan*/  answer; struct process_id pid; scalar_t__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  secure_answer_allocated ; 
 int /*<<< orphan*/  secure_receive_answer_tree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct secure_receive_answer*,int /*<<< orphan*/ ) ; 
 struct secure_receive_answer* FUNC6 (int) ; 

void FUNC7 (long long qid, struct process_id *pid, int op, int answer_len, int *answer) {
  struct secure_receive_answer *A = FUNC6 (sizeof (*A));
  A->h = 0;
  A->qid = qid;
  A->pid = *pid;
  A->answer_op = op;
  A->binlog = 1;
  A->answer_len = answer_len;
  A->answer = FUNC3 (A->answer_len);
  FUNC4 (A->answer, answer, answer_len);
  secure_receive_answer_tree = FUNC5 (secure_receive_answer_tree, A, FUNC2 ());
  secure_answer_allocated ++;
  FUNC0 (FUNC1 (), 1);
  A->binlog_pos = FUNC1 ();
}