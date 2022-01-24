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
struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int /*<<< orphan*/  lock; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (struct request_queue*,struct bio*,unsigned int,struct request**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct blk_mq_hw_ctx *hctx, struct bio *bio,
		unsigned int nr_segs)
{
	struct request_queue *q = hctx->queue;
	struct deadline_data *dd = q->elevator->elevator_data;
	struct request *free = NULL;
	bool ret;

	FUNC2(&dd->lock);
	ret = FUNC1(q, bio, nr_segs, &free);
	FUNC3(&dd->lock);

	if (free)
		FUNC0(free);

	return ret;
}