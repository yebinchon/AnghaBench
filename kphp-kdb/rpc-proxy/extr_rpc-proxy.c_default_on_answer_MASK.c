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
struct rpc_query {int /*<<< orphan*/  old_qid; int /*<<< orphan*/  pid; int /*<<< orphan*/  in_type; } ;
struct TYPE_4__ {TYPE_1__* h; } ;
struct TYPE_3__ {int /*<<< orphan*/  real_op; } ;

/* Variables and functions */
 TYPE_2__* CQ ; 
 int /*<<< orphan*/  sent_answers ; 
 int /*<<< orphan*/  skipped_answers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5 (struct rpc_query *q) {
  if (FUNC2 (q->in_type, /*q->in,*/ &q->pid, q->old_qid) < 0) {
    skipped_answers ++;
    return;
  }
  FUNC4 (CQ->h);
  sent_answers ++;

  //rwm_check (TL_OUT_RAW_MSG);
  FUNC0 (FUNC1 (), 1);
  //rwm_check (TL_OUT_RAW_MSG);
  FUNC3 (CQ->h->real_op);
}