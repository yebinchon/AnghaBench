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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMABRGCR ; 
 scalar_t__ DMABRGIRQ_A0TXF ; 
 scalar_t__ DMABRGIRQ_USBDMA ; 
 scalar_t__ DMABRGIRQ_USBDMAERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	unsigned long dcr;
	unsigned int i;

	dcr = FUNC1(DMABRGCR);
	FUNC2(dcr & ~0x00ff0003, DMABRGCR);	/* ack all */
	dcr &= dcr >> 8;	/* ignore masked */

	/* USB stuff, get it out of the way first */
	if (dcr & 1)
		FUNC3(DMABRGIRQ_USBDMA);
	if (dcr & 2)
		FUNC3(DMABRGIRQ_USBDMAERR);

	/* Audio */
	dcr >>= 16;
	while (dcr) {
		i = FUNC0(dcr);
		dcr &= dcr - 1;
		FUNC3(i + DMABRGIRQ_A0TXF);
	}
	return IRQ_HANDLED;
}