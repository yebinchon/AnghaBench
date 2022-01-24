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
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;

/* Variables and functions */
 struct blkcg_gq* FUNC0 (struct blkcg*,struct request_queue*) ; 
 struct blkcg_gq* FUNC1 (struct blkcg*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

struct blkcg_gq *FUNC5(struct blkcg *blkcg,
				    struct request_queue *q)
{
	struct blkcg_gq *blkg = FUNC1(blkcg, q);

	if (FUNC4(!blkg)) {
		unsigned long flags;

		FUNC2(&q->queue_lock, flags);
		blkg = FUNC0(blkcg, q);
		FUNC3(&q->queue_lock, flags);
	}

	return blkg;
}