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
struct blk_mq_hw_ctx {TYPE_1__* tags; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  active_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_S_TAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC3(struct blk_mq_hw_ctx *hctx)
{
	if (!FUNC2(BLK_MQ_S_TAG_ACTIVE, &hctx->state) &&
	    !FUNC1(BLK_MQ_S_TAG_ACTIVE, &hctx->state))
		FUNC0(&hctx->tags->active_queues);

	return true;
}