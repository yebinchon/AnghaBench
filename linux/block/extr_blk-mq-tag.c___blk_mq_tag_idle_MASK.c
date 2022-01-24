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
struct blk_mq_tags {int /*<<< orphan*/  active_queues; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  state; struct blk_mq_tags* tags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_S_TAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_tags*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct blk_mq_hw_ctx *hctx)
{
	struct blk_mq_tags *tags = hctx->tags;

	if (!FUNC2(BLK_MQ_S_TAG_ACTIVE, &hctx->state))
		return;

	FUNC0(&tags->active_queues);

	FUNC1(tags, false);
}