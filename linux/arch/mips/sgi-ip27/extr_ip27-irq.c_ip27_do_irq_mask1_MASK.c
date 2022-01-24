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
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PI_INT_PEND1 ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct irq_domain* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  irq_enable_mask ; 
 int FUNC4 (struct irq_domain*,scalar_t__) ; 
 unsigned long* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	cpuid_t cpu = FUNC6();
	unsigned long *mask = FUNC5(irq_enable_mask, cpu);
	struct irq_domain *domain;
	u64 pend1;
	int irq;

	/* copied from Irix intpend0() */
	pend1 = FUNC0(PI_INT_PEND1);

	pend1 &= mask[1];		/* Pick intrs we should look at */
	if (!pend1)
		return;

	domain = FUNC3(desc);
	irq = FUNC4(domain, FUNC1(pend1) + 64);
	if (irq)
		FUNC2(irq);
	else
		FUNC7();

	FUNC0(PI_INT_PEND1);
}