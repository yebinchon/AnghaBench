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
 int C_IRQ0 ; 
 int C_IRQ1 ; 
 int C_IRQ2 ; 
 int C_IRQ3 ; 
 int C_IRQ5 ; 
 scalar_t__ MIPS_CPU_IRQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 pending = FUNC2() & FUNC3();

	if (pending & C_IRQ0)
		FUNC1();
	else if (pending & C_IRQ1)
		FUNC0(MIPS_CPU_IRQ_BASE + 3);
	else if (pending & C_IRQ2)
		FUNC0(MIPS_CPU_IRQ_BASE + 4);
	else if (pending & C_IRQ3)
		FUNC0(MIPS_CPU_IRQ_BASE + 5);
	else if (pending & C_IRQ5)
		FUNC0(MIPS_CPU_IRQ_BASE + 7);
}