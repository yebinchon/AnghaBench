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
 int /*<<< orphan*/  AR2315_IMR ; 
 int /*<<< orphan*/  AR2315_ISR ; 
 int /*<<< orphan*/  AR2315_ISR_GPIO ; 
 int /*<<< orphan*/  AR2315_ISR_WD ; 
 unsigned int AR2315_MISC_IRQ_GPIO ; 
 unsigned int AR2315_MISC_IRQ_WATCHDOG ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct irq_domain* FUNC4 (struct irq_desc*) ; 
 unsigned int FUNC5 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct irq_desc *desc)
{
	u32 pending = FUNC1(AR2315_ISR) &
		      FUNC1(AR2315_IMR);
	unsigned nr, misc_irq = 0;

	if (pending) {
		struct irq_domain *domain = FUNC4(desc);

		nr = FUNC0(pending);
		misc_irq = FUNC5(domain, nr);
	}

	if (misc_irq) {
		if (nr == AR2315_MISC_IRQ_GPIO)
			FUNC2(AR2315_ISR, AR2315_ISR_GPIO);
		else if (nr == AR2315_MISC_IRQ_WATCHDOG)
			FUNC2(AR2315_ISR, AR2315_ISR_WD);
		FUNC3(misc_irq);
	} else {
		FUNC6();
	}
}