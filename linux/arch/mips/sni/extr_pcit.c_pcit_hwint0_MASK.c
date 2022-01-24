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
 int /*<<< orphan*/  IE_IRQ0 ; 
 scalar_t__ SNI_PCIT_INT_REG ; 
 scalar_t__ SNI_PCIT_INT_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	u32 pending = *(volatile u32 *)SNI_PCIT_INT_REG;
	int irq;

	FUNC0(IE_IRQ0);
	irq = FUNC2((pending >> 16) & 0x3f);

	if (FUNC3(irq > 0))
		FUNC1(irq + SNI_PCIT_INT_START - 1);
	FUNC4(IE_IRQ0);
}