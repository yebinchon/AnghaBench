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
struct rsxx_cardinfo {int n_targets; TYPE_3__* ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_lock; scalar_t__ eeh_state; scalar_t__ regmap; scalar_t__ config_valid; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_5__ {int /*<<< orphan*/  dma_addr; scalar_t__ buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_addr; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ cmd; TYPE_1__ status; int /*<<< orphan*/  issue_dma_work; int /*<<< orphan*/  issue_wq; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_BUFFER_SIZE8 ; 
 int /*<<< orphan*/  CR_INTR_ALL_C ; 
 int /*<<< orphan*/  CR_INTR_ALL_G ; 
 scalar_t__ ISR ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int RSXX_MAX_TARGETS ; 
 int /*<<< orphan*/  STATUS_BUFFER_SIZE8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rsxx_cardinfo* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct rsxx_cardinfo*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static pci_ers_result_t FUNC20(struct pci_dev *dev)
{
	struct rsxx_cardinfo *card = FUNC6(dev);
	unsigned long flags;
	int i;
	int st;

	FUNC1(&dev->dev,
		"IBM Flash Adapter PCI: recovering from slot reset.\n");

	st = FUNC4(dev);
	if (st)
		goto failed_hw_setup;

	FUNC7(dev);

	st = FUNC12(card);
	if (st)
		goto failed_hw_setup;

	FUNC10(card);

	for (i = 0; i < card->n_targets; i++) {
		st = FUNC14(dev, &card->ctrl[i]);
		if (st)
			goto failed_hw_buffers_init;
	}

	if (card->config_valid)
		FUNC9(card);

	/* Clears the ISR register from spurious interrupts */
	st = FUNC2(card->regmap + ISR);

	card->eeh_state = 0;

	FUNC17(&card->irq_lock, flags);
	if (card->n_targets & RSXX_MAX_TARGETS)
		FUNC13(card, CR_INTR_ALL_G);
	else
		FUNC13(card, CR_INTR_ALL_C);
	FUNC19(&card->irq_lock, flags);

	FUNC15(card);

	for (i = 0; i < card->n_targets; i++) {
		FUNC16(&card->ctrl[i].queue_lock);
		if (FUNC3(&card->ctrl[i].queue)) {
			FUNC18(&card->ctrl[i].queue_lock);
			continue;
		}
		FUNC18(&card->ctrl[i].queue_lock);

		FUNC8(card->ctrl[i].issue_wq,
				&card->ctrl[i].issue_dma_work);
	}

	FUNC0(&dev->dev, "IBM Flash Adapter PCI: recovery complete.\n");

	return PCI_ERS_RESULT_RECOVERED;

failed_hw_buffers_init:
	for (i = 0; i < card->n_targets; i++) {
		if (card->ctrl[i].status.buf)
			FUNC5(card->dev,
					STATUS_BUFFER_SIZE8,
					card->ctrl[i].status.buf,
					card->ctrl[i].status.dma_addr);
		if (card->ctrl[i].cmd.buf)
			FUNC5(card->dev,
					COMMAND_BUFFER_SIZE8,
					card->ctrl[i].cmd.buf,
					card->ctrl[i].cmd.dma_addr);
	}
failed_hw_setup:
	FUNC11(dev);
	return PCI_ERS_RESULT_DISCONNECT;

}