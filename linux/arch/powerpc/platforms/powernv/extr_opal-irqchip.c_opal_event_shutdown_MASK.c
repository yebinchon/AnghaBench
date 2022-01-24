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
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 unsigned int opal_irq_count ; 
 TYPE_1__* opal_irqs ; 

void FUNC4(void)
{
	unsigned int i;

	/* First free interrupts, which will also mask them */
	for (i = 0; i < opal_irq_count; i++) {
		if (!opal_irqs || !opal_irqs[i].start)
			continue;

		if (FUNC2() || FUNC3())
			FUNC0(opal_irqs[i].start);
		else
			FUNC1(opal_irqs[i].start, NULL);

		opal_irqs[i].start = 0;
	}
}