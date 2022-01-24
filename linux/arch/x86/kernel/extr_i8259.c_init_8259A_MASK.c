#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  irq_mask_ack; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int MASTER_ICW4_DEFAULT ; 
 unsigned int PIC_CASCADE_IR ; 
 unsigned int PIC_ICW4_AEOI ; 
 int /*<<< orphan*/  PIC_MASTER_CMD ; 
 int /*<<< orphan*/  PIC_MASTER_IMR ; 
 int /*<<< orphan*/  PIC_SLAVE_CMD ; 
 int /*<<< orphan*/  PIC_SLAVE_IMR ; 
 unsigned int SLAVE_ICW4_DEFAULT ; 
 int cached_master_mask ; 
 int cached_slave_mask ; 
 int /*<<< orphan*/  disable_8259A_irq ; 
 int i8259A_auto_eoi ; 
 TYPE_1__ i8259A_chip ; 
 int /*<<< orphan*/  i8259A_lock ; 
 int /*<<< orphan*/  mask_and_ack_8259A ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int auto_eoi)
{
	unsigned long flags;

	i8259A_auto_eoi = auto_eoi;

	FUNC3(&i8259A_lock, flags);

	FUNC1(0xff, PIC_MASTER_IMR);	/* mask all of 8259A-1 */

	/*
	 * outb_pic - this has to work on a wide range of PC hardware.
	 */
	FUNC2(0x11, PIC_MASTER_CMD);	/* ICW1: select 8259A-1 init */

	/* ICW2: 8259A-1 IR0-7 mapped to ISA_IRQ_VECTOR(0) */
	FUNC2(FUNC0(0), PIC_MASTER_IMR);

	/* 8259A-1 (the master) has a slave on IR2 */
	FUNC2(1U << PIC_CASCADE_IR, PIC_MASTER_IMR);

	if (auto_eoi)	/* master does Auto EOI */
		FUNC2(MASTER_ICW4_DEFAULT | PIC_ICW4_AEOI, PIC_MASTER_IMR);
	else		/* master expects normal EOI */
		FUNC2(MASTER_ICW4_DEFAULT, PIC_MASTER_IMR);

	FUNC2(0x11, PIC_SLAVE_CMD);	/* ICW1: select 8259A-2 init */

	/* ICW2: 8259A-2 IR0-7 mapped to ISA_IRQ_VECTOR(8) */
	FUNC2(FUNC0(8), PIC_SLAVE_IMR);
	/* 8259A-2 is a slave on master's IR2 */
	FUNC2(PIC_CASCADE_IR, PIC_SLAVE_IMR);
	/* (slave's support for AEOI in flat mode is to be investigated) */
	FUNC2(SLAVE_ICW4_DEFAULT, PIC_SLAVE_IMR);

	if (auto_eoi)
		/*
		 * In AEOI mode we just have to mask the interrupt
		 * when acking.
		 */
		i8259A_chip.irq_mask_ack = disable_8259A_irq;
	else
		i8259A_chip.irq_mask_ack = mask_and_ack_8259A;

	FUNC5(100);		/* wait for 8259A to initialize */

	FUNC1(cached_master_mask, PIC_MASTER_IMR); /* restore master IRQ mask */
	FUNC1(cached_slave_mask, PIC_SLAVE_IMR);	  /* restore slave IRQ mask */

	FUNC4(&i8259A_lock, flags);
}