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
struct solos_card {int /*<<< orphan*/  fw_wq; int /*<<< orphan*/  tlet; scalar_t__* atmdev; scalar_t__ config_regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct solos_card *card = dev_id;
	int handled = 1;

	FUNC1(0, card->config_regs + IRQ_CLEAR);

	/* If we're up and running, just kick the tasklet to process TX/RX */
	if (card->atmdev[0])
		FUNC2(&card->tlet);
	else
		FUNC3(&card->fw_wq);

	return FUNC0(handled);
}