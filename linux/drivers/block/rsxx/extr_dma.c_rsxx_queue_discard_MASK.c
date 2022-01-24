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
struct TYPE_2__ {scalar_t__ cnt; scalar_t__ off; } ;
struct rsxx_dma {unsigned int laddr; int /*<<< orphan*/  list; void* cb_data; int /*<<< orphan*/  cb; scalar_t__ pg_off; int /*<<< orphan*/ * page; TYPE_1__ sub_page; scalar_t__ dma_addr; int /*<<< orphan*/  cmd; } ;
struct rsxx_cardinfo {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  rsxx_dma_cb ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HW_CMD_BLK_DISCARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct rsxx_dma* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  rsxx_dma_pool ; 

__attribute__((used)) static blk_status_t FUNC4(struct rsxx_cardinfo *card,
				  struct list_head *q,
				  unsigned int laddr,
				  rsxx_dma_cb cb,
				  void *cb_data)
{
	struct rsxx_dma *dma;

	dma = FUNC2(rsxx_dma_pool, GFP_KERNEL);
	if (!dma)
		return BLK_STS_RESOURCE;

	dma->cmd          = HW_CMD_BLK_DISCARD;
	dma->laddr        = laddr;
	dma->dma_addr     = 0;
	dma->sub_page.off = 0;
	dma->sub_page.cnt = 0;
	dma->page         = NULL;
	dma->pg_off       = 0;
	dma->cb	          = cb;
	dma->cb_data      = cb_data;

	FUNC1(FUNC0(card), "Queuing[D] laddr %x\n", dma->laddr);

	FUNC3(&dma->list, q);

	return 0;
}