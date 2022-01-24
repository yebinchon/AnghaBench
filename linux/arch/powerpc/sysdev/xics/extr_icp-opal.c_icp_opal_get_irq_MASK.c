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
 unsigned int XICS_IRQ_SPURIOUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  xics_host ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC7(void)
{
	unsigned int xirr;
	unsigned int vec;
	unsigned int irq;

	xirr = FUNC1();
	vec = xirr & 0x00ffffff;
	if (vec == XICS_IRQ_SPURIOUS)
		return 0;

	irq = FUNC2(xics_host, vec);
	if (FUNC3(irq)) {
		FUNC6(vec);
		return irq;
	}

	/* We don't have a linux mapping, so have rtas mask it. */
	FUNC5(vec);

	/* We might learn about it later, so EOI it */
	if (FUNC4(xirr) > 0)
		FUNC0();

	return 0;
}