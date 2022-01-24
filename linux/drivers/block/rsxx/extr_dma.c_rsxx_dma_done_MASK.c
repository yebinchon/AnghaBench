#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_8__ {scalar_t__ sw_q_depth; int /*<<< orphan*/  hw_q_depth; } ;
struct TYPE_7__ {size_t idx; struct hw_status* buf; } ;
struct rsxx_dma_ctrl {scalar_t__ e_cnt; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  issue_dma_work; int /*<<< orphan*/  issue_wq; TYPE_2__ stats; TYPE_3__* card; int /*<<< orphan*/  id; int /*<<< orphan*/  activity_timer; TYPE_1__ status; int /*<<< orphan*/  trackers; } ;
struct rsxx_dma {int /*<<< orphan*/  laddr; } ;
struct hw_status {int /*<<< orphan*/  count; scalar_t__ tag; scalar_t__ status; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  eeh_state; int /*<<< orphan*/  dma_fault; int /*<<< orphan*/  halt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CR_INTR_DMA_ALL ; 
 scalar_t__ DMA_ACTIVITY_TIMEOUT ; 
 int RSXX_CS_IDX_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 struct rsxx_dma* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct rsxx_dma_ctrl*,struct rsxx_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rsxx_dma_ctrl*,struct rsxx_dma*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(struct rsxx_dma_ctrl *ctrl)
{
	struct rsxx_dma *dma;
	unsigned long flags;
	u16 count;
	u8 status;
	u8 tag;
	struct hw_status *hw_st_buf;

	hw_st_buf = ctrl->status.buf;

	if (FUNC22(ctrl->card->halt) ||
	    FUNC22(ctrl->card->dma_fault) ||
	    FUNC22(ctrl->card->eeh_state))
		return;

	count = FUNC9(hw_st_buf[ctrl->status.idx].count);

	while (count == ctrl->e_cnt) {
		/*
		 * The read memory-barrier is necessary to keep aggressive
		 * processors/optimizers (such as the PPC Apple G5) from
		 * reordering the following status-buffer tag & status read
		 * *before* the count read on subsequent iterations of the
		 * loop!
		 */
		FUNC13();

		status = hw_st_buf[ctrl->status.idx].status;
		tag    = hw_st_buf[ctrl->status.idx].tag;

		dma = FUNC8(ctrl->trackers, tag);
		if (dma == NULL) {
			FUNC19(&ctrl->card->irq_lock, flags);
			FUNC15(ctrl->card, CR_INTR_DMA_ALL);
			FUNC21(&ctrl->card->irq_lock, flags);

			FUNC6(FUNC0(ctrl->card),
				"No tracker for tag %d "
				"(idx %d id %d)\n",
				tag, ctrl->status.idx, ctrl->id);
			return;
		}

		FUNC5(FUNC0(ctrl->card),
			"Completing DMA%d"
			"(laddr x%x tag %d st: x%x cnt: x%04x) from idx %d.\n",
			ctrl->id, dma->laddr, tag, status, count,
			ctrl->status.idx);

		FUNC2(&ctrl->stats.hw_q_depth);

		FUNC10(&ctrl->activity_timer,
			  jiffies + DMA_ACTIVITY_TIMEOUT);

		if (status)
			FUNC17(ctrl, dma, status);
		else
			FUNC14(ctrl, dma, 0);

		FUNC11(ctrl->trackers, tag);

		ctrl->status.idx = (ctrl->status.idx + 1) &
				   RSXX_CS_IDX_MASK;
		ctrl->e_cnt++;

		count = FUNC9(hw_st_buf[ctrl->status.idx].count);
	}

	FUNC7(ctrl->card);

	if (FUNC3(&ctrl->stats.hw_q_depth) == 0)
		FUNC4(&ctrl->activity_timer);

	FUNC19(&ctrl->card->irq_lock, flags);
	FUNC16(ctrl->card, FUNC1(ctrl->id));
	FUNC21(&ctrl->card->irq_lock, flags);

	FUNC18(&ctrl->queue_lock);
	if (ctrl->stats.sw_q_depth)
		FUNC12(ctrl->issue_wq, &ctrl->issue_dma_work);
	FUNC20(&ctrl->queue_lock);
}