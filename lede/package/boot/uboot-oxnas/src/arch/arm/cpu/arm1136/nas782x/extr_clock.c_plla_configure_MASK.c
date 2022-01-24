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
 int PLL_BWADJ_SHIFT ; 
 int PLL_BYPASS ; 
 int PLL_OUTDIV_SHIFT ; 
 int PLL_REFDIV_SHIFT ; 
 int SAT_ENABLE ; 
 int /*<<< orphan*/  SYS_CTRL_PLLA_CTRL0 ; 
 int /*<<< orphan*/  SYS_CTRL_PLLA_CTRL1 ; 
 int /*<<< orphan*/  SYS_CTRL_PLLA_CTRL2 ; 
 int /*<<< orphan*/  SYS_CTRL_PLLA_CTRL3 ; 
 int /*<<< orphan*/  SYS_CTRL_RST_PLLA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int outdiv, int refdiv, int fbdiv, int bwadj,
                           int sfreq, int sslope)
{
	FUNC5(SYS_CTRL_PLLA_CTRL0, PLL_BYPASS);
	FUNC6(10);
	FUNC4(SYS_CTRL_RST_PLLA, 1);
	FUNC6(10);

	FUNC7((refdiv << PLL_REFDIV_SHIFT) | (outdiv << PLL_OUTDIV_SHIFT) |
	       SAT_ENABLE | PLL_BYPASS,
	       SYS_CTRL_PLLA_CTRL0);

	FUNC7(fbdiv, SYS_CTRL_PLLA_CTRL1);
	FUNC7((bwadj << PLL_BWADJ_SHIFT) | sfreq, SYS_CTRL_PLLA_CTRL2);
	FUNC7(sslope, SYS_CTRL_PLLA_CTRL3);

	FUNC6(10); // 5us delay required (from TCI datasheet), use 10us

	FUNC4(SYS_CTRL_RST_PLLA, 0);

	FUNC6(100); // Delay for PLL to lock

	FUNC1("  plla_ctrl0 : %08x\n", FUNC3(SYS_CTRL_PLLA_CTRL0));
	FUNC1("  plla_ctrl1 : %08x\n", FUNC3(SYS_CTRL_PLLA_CTRL1));
	FUNC1("  plla_ctrl2 : %08x\n", FUNC3(SYS_CTRL_PLLA_CTRL2));
	FUNC1("  plla_ctrl3 : %08x\n", FUNC3(SYS_CTRL_PLLA_CTRL3));

	FUNC0(SYS_CTRL_PLLA_CTRL0, PLL_BYPASS); // Take PLL out of bypass
	FUNC2("\nPLLA Set\n");
}