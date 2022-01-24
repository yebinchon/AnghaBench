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
struct rsxx_dma {scalar_t__ cmd; int /*<<< orphan*/  list; int /*<<< orphan*/  dma_addr; } ;
struct rsxx_cardinfo {int n_targets; TYPE_3__* ctrl; TYPE_1__* dev; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {int sw_q_depth; int /*<<< orphan*/  hw_q_depth; int /*<<< orphan*/  reads_issued; int /*<<< orphan*/  discards_issued; int /*<<< orphan*/  writes_issued; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_lock; scalar_t__ e_cnt; TYPE_2__ stats; int /*<<< orphan*/  queue; int /*<<< orphan*/  trackers; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HW_CMD_BLK_DISCARD ; 
 scalar_t__ HW_CMD_BLK_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int RSXX_MAX_OUTSTANDING_CMDS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rsxx_dma*) ; 
 struct rsxx_dma* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct list_head* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct rsxx_cardinfo *card)
{
	int i;
	int j;
	int cnt;
	struct rsxx_dma *dma;
	struct list_head *issued_dmas;

	issued_dmas = FUNC5(card->n_targets, sizeof(*issued_dmas),
			      GFP_KERNEL);
	if (!issued_dmas)
		return -ENOMEM;

	for (i = 0; i < card->n_targets; i++) {
		FUNC0(&issued_dmas[i]);
		cnt = 0;
		for (j = 0; j < RSXX_MAX_OUTSTANDING_CMDS; j++) {
			dma = FUNC4(card->ctrl[i].trackers, j);
			if (dma == NULL)
				continue;

			if (dma->cmd == HW_CMD_BLK_WRITE)
				card->ctrl[i].stats.writes_issued--;
			else if (dma->cmd == HW_CMD_BLK_DISCARD)
				card->ctrl[i].stats.discards_issued--;
			else
				card->ctrl[i].stats.reads_issued--;

			if (dma->cmd != HW_CMD_BLK_DISCARD) {
				FUNC2(&card->dev->dev, dma->dma_addr,
					       FUNC3(dma),
					       dma->cmd == HW_CMD_BLK_WRITE ?
					       DMA_TO_DEVICE :
					       DMA_FROM_DEVICE);
			}

			FUNC7(&dma->list, &issued_dmas[i]);
			FUNC9(card->ctrl[i].trackers, j);
			cnt++;
		}

		FUNC10(&card->ctrl[i].queue_lock);
		FUNC8(&issued_dmas[i], &card->ctrl[i].queue);

		FUNC1(cnt, &card->ctrl[i].stats.hw_q_depth);
		card->ctrl[i].stats.sw_q_depth += cnt;
		card->ctrl[i].e_cnt = 0;
		FUNC11(&card->ctrl[i].queue_lock);
	}

	FUNC6(issued_dmas);

	return 0;
}