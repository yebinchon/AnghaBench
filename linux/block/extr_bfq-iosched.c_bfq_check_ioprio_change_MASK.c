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
struct bio {int dummy; } ;
struct bfq_queue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ioc; } ;
struct bfq_io_cq {int ioprio; TYPE_2__ icq; } ;
struct bfq_data {int dummy; } ;
struct TYPE_3__ {int ioprio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 struct bfq_queue* FUNC0 (struct bfq_data*,struct bio*,int /*<<< orphan*/ ,struct bfq_io_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_queue*,struct bfq_io_cq*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_io_cq*,struct bfq_queue*,int) ; 
 struct bfq_data* FUNC4 (struct bfq_io_cq*) ; 
 struct bfq_queue* FUNC5 (struct bfq_io_cq*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct bfq_io_cq *bic, struct bio *bio)
{
	struct bfq_data *bfqd = FUNC4(bic);
	struct bfq_queue *bfqq;
	int ioprio = bic->icq.ioc->ioprio;

	/*
	 * This condition may trigger on a newly created bic, be sure to
	 * drop the lock before returning.
	 */
	if (FUNC7(!bfqd) || FUNC6(bic->ioprio == ioprio))
		return;

	bic->ioprio = ioprio;

	bfqq = FUNC5(bic, false);
	if (bfqq) {
		/* release process reference on this queue */
		FUNC1(bfqq);
		bfqq = FUNC0(bfqd, bio, BLK_RW_ASYNC, bic);
		FUNC3(bic, bfqq, false);
	}

	bfqq = FUNC5(bic, true);
	if (bfqq)
		FUNC2(bfqq, bic);
}