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
struct irq_data {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	unsigned int hw_irq = (unsigned int)FUNC2(d);
	int64_t rc;

	FUNC1();
	rc = FUNC3((FUNC4() << 24) | hw_irq);

	/*
	 * EOI tells us whether there are more interrupts to fetch.
	 *
	 * Some HW implementations might not be able to send us another
	 * external interrupt in that case, so we force a replay.
	 */
	if (rc > 0)
		FUNC0();
}