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
struct request_queue {int /*<<< orphan*/  tag_set_list; } ;
struct blk_mq_tag_set {int flags; int /*<<< orphan*/  tag_list_lock; int /*<<< orphan*/  tag_list; } ;

/* Variables and functions */
 int BLK_MQ_F_TAG_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct blk_mq_tag_set*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int) ; 

__attribute__((used)) static void FUNC6(struct blk_mq_tag_set *set,
				     struct request_queue *q)
{
	FUNC3(&set->tag_list_lock);

	/*
	 * Check to see if we're transitioning to shared (from 1 to 2 queues).
	 */
	if (!FUNC2(&set->tag_list) &&
	    !(set->flags & BLK_MQ_F_TAG_SHARED)) {
		set->flags |= BLK_MQ_F_TAG_SHARED;
		/* update existing queue */
		FUNC0(set, true);
	}
	if (set->flags & BLK_MQ_F_TAG_SHARED)
		FUNC5(q, true);
	FUNC1(&q->tag_set_list, &set->tag_list);

	FUNC4(&set->tag_list_lock);
}