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
struct rsxx_cardinfo {int eeh_state; int n_targets; TYPE_3__* ctrl; int /*<<< orphan*/  dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_addr; scalar_t__ buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_addr; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ cmd; TYPE_1__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_BUFFER_SIZE8 ; 
 int /*<<< orphan*/  STATUS_BUFFER_SIZE8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rsxx_cardinfo* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsxx_cardinfo*) ; 
 int FUNC5 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev)
{
	struct rsxx_cardinfo *card = FUNC3(dev);
	int i;
	int st;

	FUNC0(&dev->dev, "IBM Flash Adapter PCI: preparing for slot reset.\n");

	card->eeh_state = 1;
	FUNC6(card);

	/*
	 * We need to guarantee that the write for eeh_state and masking
	 * interrupts does not become reordered. This will prevent a possible
	 * race condition with the EEH code.
	 */
	FUNC7();

	FUNC1(dev);

	st = FUNC5(card);
	if (st)
		return st;

	FUNC4(card);

	for (i = 0; i < card->n_targets; i++) {
		if (card->ctrl[i].status.buf)
			FUNC2(card->dev, STATUS_BUFFER_SIZE8,
					    card->ctrl[i].status.buf,
					    card->ctrl[i].status.dma_addr);
		if (card->ctrl[i].cmd.buf)
			FUNC2(card->dev, COMMAND_BUFFER_SIZE8,
					    card->ctrl[i].cmd.buf,
					    card->ctrl[i].cmd.dma_addr);
	}

	return 0;
}