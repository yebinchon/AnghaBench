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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct io_context {int dummy; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {int dummy; } ;

/* Variables and functions */
 struct bfq_io_cq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct io_context*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct bfq_io_cq *FUNC4(struct bfq_data *bfqd,
					struct io_context *ioc,
					struct request_queue *q)
{
	if (ioc) {
		unsigned long flags;
		struct bfq_io_cq *icq;

		FUNC2(&q->queue_lock, flags);
		icq = FUNC0(FUNC1(ioc, q));
		FUNC3(&q->queue_lock, flags);

		return icq;
	}

	return NULL;
}