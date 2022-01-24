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
struct mpc_intsrc {int irqflag; int /*<<< orphan*/  dstirq; int /*<<< orphan*/  dstapic; int /*<<< orphan*/  srcbusirq; int /*<<< orphan*/  srcbus; int /*<<< orphan*/  irqtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_VERBOSE ; 
 int MAX_IRQ_SOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mpc_intsrc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mpc_intsrc*,int) ; 
 int mp_irq_entries ; 
 int /*<<< orphan*/ * mp_irqs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct mpc_intsrc *m)
{
	int i;

	FUNC0(APIC_VERBOSE, "Int: type %d, pol %d, trig %d, bus %02x,"
		" IRQ %02x, APIC ID %x, APIC INT %02x\n",
		m->irqtype, m->irqflag & 3, (m->irqflag >> 2) & 3, m->srcbus,
		m->srcbusirq, m->dstapic, m->dstirq);

	for (i = 0; i < mp_irq_entries; i++) {
		if (!FUNC1(&mp_irqs[i], m, sizeof(*m)))
			return;
	}

	FUNC2(&mp_irqs[mp_irq_entries], m, sizeof(*m));
	if (++mp_irq_entries == MAX_IRQ_SOURCES)
		FUNC3("Max # of irq sources exceeded!!\n");
}