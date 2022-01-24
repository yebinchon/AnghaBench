#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_5__ {scalar_t__ idx; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_q_depth; } ;
struct rsxx_dma_ctrl {int /*<<< orphan*/  id; TYPE_3__* card; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  activity_timer; scalar_t__ regmap; TYPE_2__ cmd; TYPE_1__ stats; } ;
struct TYPE_6__ {int dma_fault; int /*<<< orphan*/  eeh_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  COMPLETE_DMA ; 
 scalar_t__ DMA_ACTIVITY_TIMEOUT ; 
 scalar_t__ SW_CMD_IDX ; 
 int /*<<< orphan*/  activity_timer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rsxx_dma_ctrl* ctrl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct rsxx_dma_ctrl* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC8 (struct rsxx_dma_ctrl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct rsxx_dma_ctrl*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct timer_list *t)
{
	struct rsxx_dma_ctrl *ctrl = FUNC4(ctrl, t, activity_timer);
	int cnt;

	if (FUNC1(&ctrl->stats.hw_q_depth) == 0 ||
	    FUNC12(ctrl->card->eeh_state))
		return;

	if (ctrl->cmd.idx != FUNC5(ctrl->regmap + SW_CMD_IDX)) {
		/*
		 * The dma engine was stalled because the SW_CMD_IDX write
		 * was lost. Issue it again to recover.
		 */
		FUNC3(FUNC0(ctrl->card),
			"SW_CMD_IDX write was lost, re-writing...\n");
		FUNC6(ctrl->cmd.idx, ctrl->regmap + SW_CMD_IDX);
		FUNC7(&ctrl->activity_timer,
			  jiffies + DMA_ACTIVITY_TIMEOUT);
	} else {
		FUNC3(FUNC0(ctrl->card),
			"DMA channel %d has stalled, faulting interface.\n",
			ctrl->id);
		ctrl->card->dma_fault = 1;

		/* Clean up the DMA queue */
		FUNC10(&ctrl->queue_lock);
		cnt = FUNC8(ctrl, &ctrl->queue, COMPLETE_DMA);
		FUNC11(&ctrl->queue_lock);

		cnt += FUNC9(ctrl);

		if (cnt)
			FUNC2(FUNC0(ctrl->card),
				"Freed %d queued DMAs on channel %d\n",
				cnt, ctrl->id);
	}
}