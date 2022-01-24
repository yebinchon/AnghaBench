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
typedef  unsigned long u64 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
typedef  int /*<<< orphan*/  cpuid_t ;

/* Variables and functions */
 unsigned long CPU_CALL_A_IRQ ; 
 unsigned long CPU_CALL_B_IRQ ; 
 unsigned long CPU_RESCHED_A_IRQ ; 
 unsigned long CPU_RESCHED_B_IRQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_INT_PEND0 ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct irq_domain* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  irq_enable_mask ; 
 int FUNC6 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	cpuid_t cpu = FUNC9();
	unsigned long *mask = FUNC7(irq_enable_mask, cpu);
	struct irq_domain *domain;
	u64 pend0;
	int irq;

	/* copied from Irix intpend0() */
	pend0 = FUNC1(PI_INT_PEND0);

	pend0 &= mask[0];		/* Pick intrs we should look at */
	if (!pend0)
		return;

#ifdef CONFIG_SMP
	if (pend0 & (1UL << CPU_RESCHED_A_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_RESCHED_A_IRQ);
		scheduler_ipi();
	} else if (pend0 & (1UL << CPU_RESCHED_B_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_RESCHED_B_IRQ);
		scheduler_ipi();
	} else if (pend0 & (1UL << CPU_CALL_A_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_CALL_A_IRQ);
		generic_smp_call_function_interrupt();
	} else if (pend0 & (1UL << CPU_CALL_B_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_CALL_B_IRQ);
		generic_smp_call_function_interrupt();
	} else
#endif
	{
		domain = FUNC5(desc);
		irq = FUNC6(domain, FUNC2(pend0));
		if (irq)
			FUNC3(irq);
		else
			FUNC10();
	}

	FUNC1(PI_INT_PEND0);
}