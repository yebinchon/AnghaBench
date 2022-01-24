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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int IRQ_ILR0_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,unsigned long) ; 

__attribute__((used)) static void FUNC3(int irq, int fiq, int priority, int trigger)
{
	signed int bank;
	unsigned long val, offset;

	bank = FUNC0(irq);
	/* FIQ is only available on bank 0 interrupts */
	fiq = bank ? 0 : (fiq & 0x1);
	val = fiq | ((priority & 0x1f) << 2) | ((trigger & 0x1) << 1);
	offset = IRQ_ILR0_REG_OFFSET + FUNC1(irq) * 0x4;
	FUNC2(val, bank, offset);
}