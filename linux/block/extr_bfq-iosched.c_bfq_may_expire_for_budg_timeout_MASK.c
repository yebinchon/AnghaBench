#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int budget; } ;
struct bfq_queue {TYPE_1__ entity; int /*<<< orphan*/  bfqd; } ;

/* Variables and functions */
 int FUNC0 (struct bfq_queue*) ; 
 scalar_t__ FUNC1 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bfq_queue*,char*,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct bfq_queue *bfqq)
{
	FUNC3(bfqq->bfqd, bfqq,
		"may_budget_timeout: wait_request %d left %d timeout %d",
		FUNC2(bfqq),
			FUNC0(bfqq) >=  bfqq->entity.budget / 3,
		FUNC1(bfqq));

	return (!FUNC2(bfqq) ||
		FUNC0(bfqq) >=  bfqq->entity.budget / 3)
		&&
		FUNC1(bfqq);
}