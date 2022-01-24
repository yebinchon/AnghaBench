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
struct blk_mq_hw_ctx {int /*<<< orphan*/  state; int /*<<< orphan*/  run_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_S_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct blk_mq_hw_ctx *hctx)
{
	FUNC0(&hctx->run_work);

	FUNC1(BLK_MQ_S_STOPPED, &hctx->state);
}