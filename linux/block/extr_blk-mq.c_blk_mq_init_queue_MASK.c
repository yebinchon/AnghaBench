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
struct request_queue {int dummy; } ;
struct blk_mq_tag_set {int /*<<< orphan*/  numa_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 struct request_queue* FUNC4 (struct blk_mq_tag_set*,struct request_queue*,int) ; 

struct request_queue *FUNC5(struct blk_mq_tag_set *set)
{
	struct request_queue *uninit_q, *q;

	uninit_q = FUNC2(GFP_KERNEL, set->numa_node);
	if (!uninit_q)
		return FUNC0(-ENOMEM);

	/*
	 * Initialize the queue without an elevator. device_add_disk() will do
	 * the initialization.
	 */
	q = FUNC4(set, uninit_q, false);
	if (FUNC1(q))
		FUNC3(uninit_q);

	return q;
}