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
struct request_queue {struct blk_mq_tag_set* tag_set; } ;
struct blk_mq_tag_set {int /*<<< orphan*/  nr_hw_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct blk_mq_tag_set*,int /*<<< orphan*/ ) ; 

void FUNC2(struct request_queue *q)
{
	struct blk_mq_tag_set	*set = q->tag_set;

	FUNC0(q);
	FUNC1(q, set, set->nr_hw_queues);
}