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
struct pt_regs {int dummy; } ;
struct irq_bucket {int /*<<< orphan*/  irq; struct irq_bucket* next; } ;

/* Variables and functions */
 unsigned int SUN4D_IPI_IRQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct irq_bucket** irq_map ; 
 int* pil_to_sbus ; 
 struct pt_regs* FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(unsigned int pil, struct pt_regs *regs)
{
	struct pt_regs *old_regs;
	/* SBUS IRQ level (1 - 7) */
	int sbusl = pil_to_sbus[pil];

	/* FIXME: Is this necessary?? */
	FUNC0();

	FUNC1(1 << pil);

#ifdef CONFIG_SMP
	/*
	 * Check IPI data structures after IRQ has been cleared. Hard and Soft
	 * IRQ can happen at the same time, so both cases are always handled.
	 */
	if (pil == SUN4D_IPI_IRQ)
		sun4d_ipi_interrupt();
#endif

	old_regs = FUNC5(regs);
	FUNC3();
	if (sbusl == 0) {
		/* cpu interrupt */
		struct irq_bucket *p;

		p = irq_map[pil];
		while (p) {
			struct irq_bucket *next;

			next = p->next;
			FUNC2(p->irq);
			p = next;
		}
	} else {
		/* SBUS interrupt */
		FUNC7(sbusl);
	}
	FUNC4();
	FUNC5(old_regs);
}