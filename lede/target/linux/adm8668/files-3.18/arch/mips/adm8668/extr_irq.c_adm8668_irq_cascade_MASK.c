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

/* Variables and functions */
 int IRQ_MASK ; 
 int /*<<< orphan*/  IRQ_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	int irq;
	u32 intsrc;

	intsrc = FUNC2(IRQ_STATUS_REG) & IRQ_MASK;
	if (intsrc) {
		irq = FUNC1(intsrc) - 1;
		FUNC0(irq);
	} else
		FUNC3();
}