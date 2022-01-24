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
struct bfq_queue {int ioprio_class; int wr_coeff; int /*<<< orphan*/  dispatched; } ;
struct bfq_data {int /*<<< orphan*/  wr_busy_queues; int /*<<< orphan*/  queue_weights_tree; int /*<<< orphan*/ * busy_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_data*,struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_data*,struct bfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_data*,struct bfq_queue*,int /*<<< orphan*/ *) ; 

void FUNC4(struct bfq_data *bfqd, struct bfq_queue *bfqq)
{
	FUNC1(bfqd, bfqq, "add to busy");

	FUNC0(bfqd, bfqq);

	FUNC2(bfqq);
	bfqd->busy_queues[bfqq->ioprio_class - 1]++;

	if (!bfqq->dispatched)
		if (bfqq->wr_coeff == 1)
			FUNC3(bfqd, bfqq,
					     &bfqd->queue_weights_tree);

	if (bfqq->wr_coeff > 1)
		bfqd->wr_busy_queues++;
}