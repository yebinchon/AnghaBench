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
struct rsxx_cardinfo {int n_targets; int /*<<< orphan*/  irq_lock; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct rsxx_cardinfo* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsxx_cardinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *dev)
{
	struct rsxx_cardinfo *card = FUNC4(dev);
	unsigned long flags;
	int i;

	if (!card)
		return;

	FUNC3(FUNC0(card), "Shutting down PCI-Flash SSD.\n");

	FUNC5(card);

	for (i = 0; i < card->n_targets; i++) {
		FUNC7(&card->irq_lock, flags);
		FUNC6(card, FUNC1(i));
		FUNC8(&card->irq_lock, flags);
	}

	FUNC2(card);
}