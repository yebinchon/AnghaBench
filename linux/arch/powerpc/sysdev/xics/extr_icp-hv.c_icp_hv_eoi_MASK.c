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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct irq_data*) ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	unsigned int hw_irq = (unsigned int)FUNC2(d);

	FUNC1();
	FUNC0((FUNC3() << 24) | hw_irq);
}