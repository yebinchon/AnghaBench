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
 int HZ ; 
 size_t FUNC0 (int) ; 
 scalar_t__* ipi_mailbox_buf ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int mips_hpt_frequency ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(void)
{
	int cpu = FUNC6();

	FUNC7(FUNC4() + mips_hpt_frequency/HZ);
	FUNC1();
	FUNC2(0,
			ipi_mailbox_buf[FUNC0(cpu)] + 0x0);
	FUNC3("CPU#%d finished, CP0_ST=%x\n",
			FUNC6(), FUNC5());
}