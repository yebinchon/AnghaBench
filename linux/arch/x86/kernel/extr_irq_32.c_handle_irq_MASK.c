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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 

void FUNC6(struct irq_desc *desc, struct pt_regs *regs)
{
	int overflow = FUNC0();

	if (FUNC5(regs) || !FUNC1(overflow, desc)) {
		if (FUNC4(overflow))
			FUNC3();
		FUNC2(desc);
	}
}