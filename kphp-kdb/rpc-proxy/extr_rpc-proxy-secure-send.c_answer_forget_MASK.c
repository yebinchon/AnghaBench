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
struct tree_secure_receive_answer {struct secure_receive_answer* x; } ;
struct process_id {int dummy; } ;
struct secure_receive_answer {long long qid; int /*<<< orphan*/  binlog_pos; scalar_t__ h; int /*<<< orphan*/  answer; struct process_id pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  secure_answer_allocated ; 
 int /*<<< orphan*/  secure_receive_answer_tree ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct secure_receive_answer*) ; 
 struct tree_secure_receive_answer* FUNC4 (int /*<<< orphan*/ ,struct secure_receive_answer*) ; 
 int /*<<< orphan*/  FUNC5 (struct secure_receive_answer*,int) ; 

void FUNC6 (long long qid, struct process_id *pid) {
  struct secure_receive_answer t;
  t.qid = qid;
  t.pid = *pid;
  struct tree_secure_receive_answer *T = FUNC4 (secure_receive_answer_tree, &t);
  if (T) {
    secure_receive_answer_tree = FUNC3 (secure_receive_answer_tree, T->x);
    struct secure_receive_answer *A = T->x;
    secure_answer_allocated --;
    FUNC1 (A->answer);
    if (A->h) {
      FUNC2 (A->h);
    }
    FUNC0 (A->binlog_pos, 1);
    FUNC5 (A, sizeof (*A));
  }
}