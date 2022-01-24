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
struct bfq_queue {int /*<<< orphan*/ * bic; struct bfq_data* bfqd; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_data*,struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_io_cq*,int /*<<< orphan*/ *,int) ; 
 struct bfq_queue* FUNC2 (struct bfq_io_cq*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct bfq_io_cq *bic, bool is_sync)
{
	struct bfq_queue *bfqq = FUNC2(bic, is_sync);
	struct bfq_data *bfqd;

	if (bfqq)
		bfqd = bfqq->bfqd; /* NULL if scheduler already exited */

	if (bfqq && bfqd) {
		unsigned long flags;

		FUNC3(&bfqd->lock, flags);
		bfqq->bic = NULL;
		FUNC0(bfqd, bfqq);
		FUNC1(bic, NULL, is_sync);
		FUNC4(&bfqd->lock, flags);
	}
}