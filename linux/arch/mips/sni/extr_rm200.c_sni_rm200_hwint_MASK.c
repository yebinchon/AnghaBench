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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int C_IRQ0 ; 
 int C_IRQ5 ; 
 int /*<<< orphan*/  IE_IRQ0 ; 
 scalar_t__ MIPS_CPU_IRQ_BASE ; 
 scalar_t__ SNI_RM200_INT_ENA_REG ; 
 scalar_t__ SNI_RM200_INT_START ; 
 scalar_t__ SNI_RM200_INT_STAT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	u32 pending = FUNC4() & FUNC5();
	u8 mask;
	u8 stat;
	int irq;

	if (pending & C_IRQ5)
		FUNC1(MIPS_CPU_IRQ_BASE + 7);
	else if (pending & C_IRQ0) {
		FUNC0(IE_IRQ0);
		mask = *(volatile u8 *)SNI_RM200_INT_ENA_REG ^ 0x1f;
		stat = *(volatile u8 *)SNI_RM200_INT_STAT_REG ^ 0x14;
		irq = FUNC2(stat & mask & 0x1f);

		if (FUNC3(irq > 0))
			FUNC1(irq + SNI_RM200_INT_START - 1);
		FUNC6(IE_IRQ0);
	}
}