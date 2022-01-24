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
struct bluecard_info {int ctrl_reg; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_state; TYPE_2__* p_dev; int /*<<< orphan*/  hw_state; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_READY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ REG_COMMAND ; 
 int REG_COMMAND_RX_BUF_ONE ; 
 int REG_COMMAND_RX_BUF_TWO ; 
 scalar_t__ REG_CONTROL ; 
 int REG_CONTROL_INTERRUPT ; 
 scalar_t__ REG_INTERRUPT ; 
 int /*<<< orphan*/  XMIT_BUF_ONE_READY ; 
 int /*<<< orphan*/  XMIT_BUF_TWO_READY ; 
 int /*<<< orphan*/  FUNC0 (struct bluecard_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bluecard_info*) ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_inst)
{
	struct bluecard_info *info = dev_inst;
	unsigned int iobase;
	unsigned char reg;

	if (!info || !info->hdev)
		/* our irq handler is shared */
		return IRQ_NONE;

	if (!FUNC7(CARD_READY, &(info->hw_state)))
		return IRQ_HANDLED;

	iobase = info->p_dev->resource[0]->start;

	FUNC5(&(info->lock));

	/* Disable interrupt */
	info->ctrl_reg &= ~REG_CONTROL_INTERRUPT;
	FUNC3(info->ctrl_reg, iobase + REG_CONTROL);

	reg = FUNC2(iobase + REG_INTERRUPT);

	if ((reg != 0x00) && (reg != 0xff)) {

		if (reg & 0x04) {
			FUNC0(info, 0x00);
			FUNC3(0x04, iobase + REG_INTERRUPT);
			FUNC3(REG_COMMAND_RX_BUF_ONE, iobase + REG_COMMAND);
		}

		if (reg & 0x08) {
			FUNC0(info, 0x10);
			FUNC3(0x08, iobase + REG_INTERRUPT);
			FUNC3(REG_COMMAND_RX_BUF_TWO, iobase + REG_COMMAND);
		}

		if (reg & 0x01) {
			FUNC4(XMIT_BUF_ONE_READY, &(info->tx_state));
			FUNC3(0x01, iobase + REG_INTERRUPT);
			FUNC1(info);
		}

		if (reg & 0x02) {
			FUNC4(XMIT_BUF_TWO_READY, &(info->tx_state));
			FUNC3(0x02, iobase + REG_INTERRUPT);
			FUNC1(info);
		}

	}

	/* Enable interrupt */
	info->ctrl_reg |= REG_CONTROL_INTERRUPT;
	FUNC3(info->ctrl_reg, iobase + REG_CONTROL);

	FUNC6(&(info->lock));

	return IRQ_HANDLED;
}