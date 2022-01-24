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
typedef  int u32 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5312_IMR ; 
 int /*<<< orphan*/  AR5312_ISR ; 
 unsigned int AR5312_MISC_IRQ_TIMER ; 
 int /*<<< orphan*/  AR5312_TIMER ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct irq_domain* FUNC3 (struct irq_desc*) ; 
 unsigned int FUNC4 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	u32 pending = FUNC1(AR5312_ISR) &
		      FUNC1(AR5312_IMR);
	unsigned nr, misc_irq = 0;

	if (pending) {
		struct irq_domain *domain = FUNC3(desc);

		nr = FUNC0(pending);
		misc_irq = FUNC4(domain, nr);
	}

	if (misc_irq) {
		FUNC2(misc_irq);
		if (nr == AR5312_MISC_IRQ_TIMER)
			FUNC1(AR5312_TIMER);
	} else {
		FUNC5();
	}
}