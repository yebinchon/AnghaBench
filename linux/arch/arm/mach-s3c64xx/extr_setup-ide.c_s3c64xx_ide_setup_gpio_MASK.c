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
 int MEM_SYS_CFG_EBI_FIX_PRI_CFCON ; 
 int MEM_SYS_CFG_INDEP_CF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  S3C_MEM_SYS_CFG ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	u32 reg;

	reg = FUNC5(S3C_MEM_SYS_CFG) & (~0x3f);

	/* Independent CF interface, CF chip select configuration */
	FUNC8(reg | MEM_SYS_CFG_INDEP_CF |
		MEM_SYS_CFG_EBI_FIX_PRI_CFCON, S3C_MEM_SYS_CFG);

	FUNC6(FUNC0(4), FUNC4(4));

	/* Set XhiDATA[15:0] pins as CF Data[15:0] */
	FUNC7(FUNC1(0), 16, FUNC4(5));

	/* Set XhiADDR[2:0] pins as CF ADDR[2:0] */
	FUNC7(FUNC2(0), 3, FUNC4(6));

	/* Set Xhi ctrl pins as CF ctrl pins(IORDY, IOWR, IORD, CE[0:1]) */
	FUNC6(FUNC3(5), FUNC4(1));
	FUNC7(FUNC3(0), 5, FUNC4(6));
}