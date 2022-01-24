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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

void FUNC5(struct irq_desc *desc)
{
	unsigned int irq = FUNC3(desc);
	FUNC1(irq);
	FUNC0(irq);
	FUNC2();
	FUNC4(irq);
}