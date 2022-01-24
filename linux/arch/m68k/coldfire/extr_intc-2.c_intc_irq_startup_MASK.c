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
typedef  int u8 ;
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 scalar_t__ EINT0 ; 
 unsigned int EINT1 ; 
 unsigned int EINT7 ; 
 unsigned long MCFEPORT_EPDDR ; 
 unsigned long MCFEPORT_EPIER ; 
 unsigned long MCFICM_INTC0 ; 
 unsigned long MCFICM_INTC1 ; 
 scalar_t__ MCFINTC_ICR0 ; 
 unsigned int MCFINT_VECBASE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  intc_intpri ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 

__attribute__((used)) static unsigned int FUNC3(struct irq_data *d)
{
	unsigned int irq = d->irq - MCFINT_VECBASE;
	unsigned long icraddr;

#ifdef MCFICM_INTC1
	icraddr = (irq & 0x40) ? MCFICM_INTC1 : MCFICM_INTC0;
#else
	icraddr = MCFICM_INTC0;
#endif
	icraddr += MCFINTC_ICR0 + (irq & 0x3f);
	if (FUNC0(icraddr) == 0)
		FUNC1(intc_intpri--, icraddr);

	irq = d->irq;
	if ((irq >= EINT1) && (irq <= EINT7)) {
		u8 v;

		irq -= EINT0;

		/* Set EPORT line as input */
		v = FUNC0(MCFEPORT_EPDDR);
		FUNC1(v & ~(0x1 << irq), MCFEPORT_EPDDR);

		/* Set EPORT line as interrupt source */
		v = FUNC0(MCFEPORT_EPIER);
		FUNC1(v | (0x1 << irq), MCFEPORT_EPIER);
	}

	FUNC2(d);
	return 0;
}