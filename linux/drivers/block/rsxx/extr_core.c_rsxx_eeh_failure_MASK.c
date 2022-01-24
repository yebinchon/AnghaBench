#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rsxx_cardinfo {int eeh_state; int halt; int n_targets; TYPE_1__* ctrl; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  COMPLETE_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct rsxx_cardinfo* FUNC3 (struct pci_dev*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct rsxx_cardinfo *card = FUNC3(dev);
	int i;
	int cnt = 0;

	FUNC1(&dev->dev, "IBM Flash Adapter PCI: disabling failed card.\n");

	card->eeh_state = 1;
	card->halt = 1;

	for (i = 0; i < card->n_targets; i++) {
		FUNC6(&card->ctrl[i].queue_lock);
		cnt = FUNC4(&card->ctrl[i],
					     &card->ctrl[i].queue,
					     COMPLETE_DMA);
		FUNC7(&card->ctrl[i].queue_lock);

		cnt += FUNC5(&card->ctrl[i]);

		if (cnt)
			FUNC2(FUNC0(card),
				"Freed %d queued DMAs on channel %d\n",
				cnt, card->ctrl[i].id);
	}
}