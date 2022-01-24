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
struct dtl1_info {unsigned char ri_latch; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_state; TYPE_2__* p_dev; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ UART_IIR ; 
 int UART_IIR_ID ; 
#define  UART_IIR_RDI 130 
#define  UART_IIR_RLSI 129 
#define  UART_IIR_THRI 128 
 scalar_t__ UART_LSR ; 
 int UART_LSR_THRE ; 
 scalar_t__ UART_MSR ; 
 unsigned char UART_MSR_RI ; 
 int /*<<< orphan*/  XMIT_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dtl1_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dtl1_info*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_inst)
{
	struct dtl1_info *info = dev_inst;
	unsigned int iobase;
	unsigned char msr;
	int boguscount = 0;
	int iir, lsr;
	irqreturn_t r = IRQ_NONE;

	if (!info || !info->hdev)
		/* our irq handler is shared */
		return IRQ_NONE;

	iobase = info->p_dev->resource[0]->start;

	FUNC5(&(info->lock));

	iir = FUNC4(iobase + UART_IIR) & UART_IIR_ID;
	while (iir) {

		r = IRQ_HANDLED;
		/* Clear interrupt */
		lsr = FUNC4(iobase + UART_LSR);

		switch (iir) {
		case UART_IIR_RLSI:
			FUNC0("RLSI");
			break;
		case UART_IIR_RDI:
			/* Receive interrupt */
			FUNC2(info);
			break;
		case UART_IIR_THRI:
			if (lsr & UART_LSR_THRE) {
				/* Transmitter ready for data */
				FUNC3(info);
			}
			break;
		default:
			FUNC0("Unhandled IIR=%#x", iir);
			break;
		}

		/* Make sure we don't stay here too long */
		if (boguscount++ > 100)
			break;

		iir = FUNC4(iobase + UART_IIR) & UART_IIR_ID;

	}

	msr = FUNC4(iobase + UART_MSR);

	if (info->ri_latch ^ (msr & UART_MSR_RI)) {
		info->ri_latch = msr & UART_MSR_RI;
		FUNC1(XMIT_WAITING, &(info->tx_state));
		FUNC3(info);
		r = IRQ_HANDLED;
	}

	FUNC6(&(info->lock));

	return r;
}