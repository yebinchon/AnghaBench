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
struct tree_secure_receive_answer {struct secure_receive_answer* x; } ;
struct secure_receive_answer {int /*<<< orphan*/  answer_op; int /*<<< orphan*/  answer_len; int /*<<< orphan*/  answer; scalar_t__ h; int /*<<< orphan*/  pid; int /*<<< orphan*/  qid; } ;
struct TYPE_4__ {TYPE_1__* h; int /*<<< orphan*/ * remote_pid; int /*<<< orphan*/  in_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 TYPE_2__* CQ ; 
 int /*<<< orphan*/  RPC_FUN_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  secure_receive_answer_tree ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tree_secure_receive_answer* FUNC5 (int /*<<< orphan*/ ,struct secure_receive_answer*) ; 

int FUNC6 (void **IP, void **Data) {
  struct secure_receive_answer t;
  t.qid = CQ->h->qid;
  t.pid = *CQ->remote_pid;
  struct tree_secure_receive_answer *T = FUNC5 (secure_receive_answer_tree, &t);
  if (!T) {
    RPC_FUN_NEXT;
  } else {
    struct secure_receive_answer *A = T->x;
    FUNC0 (A->answer);
    FUNC1 (CQ->in_type, CQ->remote_pid, CQ->h->qid);
    //tl_store_init_any (CQ->in_type, CQ->in, CQ->h->qid);
    if (A->h) {
      FUNC3 (A->h);
    }
    FUNC4 (A->answer, A->answer_len);
    FUNC2 (A->answer_op);
    return -1;
  }
}