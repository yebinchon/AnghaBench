#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct cardinfo {int /*<<< orphan*/  queue; TYPE_2__* mm_pages; TYPE_1__* dev; int /*<<< orphan*/  csr_remap; int /*<<< orphan*/  tasklet; } ;
struct TYPE_4__ {int /*<<< orphan*/  page_dma; scalar_t__ desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct cardinfo* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct cardinfo *card = FUNC5(dev);

	FUNC7(&card->tasklet);
	FUNC2(dev->irq, card);
	FUNC3(card->csr_remap);

	if (card->mm_pages[0].desc)
		FUNC1(&card->dev->dev, PAGE_SIZE * 2,
				    card->mm_pages[0].desc,
				    card->mm_pages[0].page_dma);
	if (card->mm_pages[1].desc)
		FUNC1(&card->dev->dev, PAGE_SIZE * 2,
				    card->mm_pages[1].desc,
				    card->mm_pages[1].page_dma);
	FUNC0(card->queue);

	FUNC6(dev);
	FUNC4(dev);
}