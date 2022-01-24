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
struct bfq_queue {int /*<<< orphan*/  ref; } ;
struct bfq_data {struct bfq_queue* in_service_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFQQE_BUDGET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bfq_data*,struct bfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_data*,struct bfq_queue*,char*,struct bfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_data*) ; 

__attribute__((used)) static void FUNC5(struct bfq_data *bfqd, struct bfq_queue *bfqq)
{
	if (bfqq == bfqd->in_service_queue) {
		FUNC0(bfqd, bfqq, BFQQE_BUDGET_TIMEOUT);
		FUNC4(bfqd);
	}

	FUNC1(bfqd, bfqq, "exit_bfqq: %p, %d", bfqq, bfqq->ref);

	FUNC2(bfqq);

	FUNC3(bfqq); /* release process reference */
}