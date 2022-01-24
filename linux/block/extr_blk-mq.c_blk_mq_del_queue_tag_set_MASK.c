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
struct request_queue {int /*<<< orphan*/  tag_set_list; struct blk_mq_tag_set* tag_set; } ;
struct blk_mq_tag_set {int /*<<< orphan*/  tag_list_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  tag_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_TAG_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_tag_set*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q)
{
	struct blk_mq_tag_set *set = q->tag_set;

	FUNC4(&set->tag_list_lock);
	FUNC2(&q->tag_set_list);
	if (FUNC3(&set->tag_list)) {
		/* just transitioned to unshared */
		set->flags &= ~BLK_MQ_F_TAG_SHARED;
		/* update existing queue */
		FUNC1(set, false);
	}
	FUNC5(&set->tag_list_lock);
	FUNC0(&q->tag_set_list);
}