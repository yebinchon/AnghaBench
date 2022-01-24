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
struct rsxx_cardinfo {int n_targets; int halt; int /*<<< orphan*/  disk_id; int /*<<< orphan*/  regmap; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  event_work; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  CR_INTR_ALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CR_INTR_EVENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  force_legacy ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct rsxx_cardinfo* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC16 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC17 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC18 (struct rsxx_cardinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsxx_disk_ida ; 
 int /*<<< orphan*/  FUNC19 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC22(struct pci_dev *dev)
{
	struct rsxx_cardinfo *card = FUNC12(dev);
	unsigned long flags;
	int st;
	int i;

	if (!card)
		return;

	FUNC6(FUNC0(card),
		"Removing PCI-Flash SSD.\n");

	FUNC17(card);

	for (i = 0; i < card->n_targets; i++) {
		FUNC20(&card->irq_lock, flags);
		FUNC18(card, FUNC1(i));
		FUNC21(&card->irq_lock, flags);
	}

	st = FUNC3(card);
	if (st)
		FUNC5(FUNC0(card), "Shutdown failed!\n");

	/* Sync outstanding event handlers. */
	FUNC20(&card->irq_lock, flags);
	FUNC18(card, CR_INTR_EVENT);
	FUNC21(&card->irq_lock, flags);

	FUNC2(&card->event_work);

	FUNC16(card);
	FUNC19(card);

	FUNC20(&card->irq_lock, flags);
	FUNC18(card, CR_INTR_ALL);
	FUNC21(&card->irq_lock, flags);

	/* Prevent work_structs from re-queuing themselves. */
	card->halt = 1;

	FUNC4(card->debugfs_dir);

	FUNC7(dev->irq, card);

	if (!force_legacy)
		FUNC11(dev);

	FUNC15(card);

	FUNC13(dev, card->regmap);

	FUNC10(dev);
	FUNC14(dev);

	FUNC8(&rsxx_disk_ida, card->disk_id);
	FUNC9(card);
}