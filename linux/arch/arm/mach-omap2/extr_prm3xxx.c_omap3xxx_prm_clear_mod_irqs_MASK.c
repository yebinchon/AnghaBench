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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  CM_FCLKEN1 ; 
 int /*<<< orphan*/  CM_ICLKEN1 ; 
 int /*<<< orphan*/  CM_ICLKEN3 ; 
 int /*<<< orphan*/  OMAP3430ES2_CM_FCLKEN3 ; 
 int OMAP3430ES2_EN_USBHOST2_SHIFT ; 
 int /*<<< orphan*/  OMAP3430ES2_PM_MPUGRPSEL3 ; 
 int /*<<< orphan*/  OMAP3430ES2_PM_WKST3 ; 
 int /*<<< orphan*/  OMAP3430ES2_USBHOST_MOD ; 
 int /*<<< orphan*/  OMAP3430_PM_MPUGRPSEL ; 
 int /*<<< orphan*/  PM_WKST1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(s16 module, u8 regs, u32 wkst_mask)
{
	u32 wkst, fclk, iclk, clken;
	u16 wkst_off = (regs == 3) ? OMAP3430ES2_PM_WKST3 : PM_WKST1;
	u16 fclk_off = (regs == 3) ? OMAP3430ES2_CM_FCLKEN3 : CM_FCLKEN1;
	u16 iclk_off = (regs == 3) ? CM_ICLKEN3 : CM_ICLKEN1;
	u16 grpsel_off = (regs == 3) ?
		OMAP3430ES2_PM_MPUGRPSEL3 : OMAP3430_PM_MPUGRPSEL;
	int c = 0;

	wkst = FUNC3(module, wkst_off);
	wkst &= FUNC3(module, grpsel_off);
	wkst &= wkst_mask;
	if (wkst) {
		iclk = FUNC0(module, iclk_off);
		fclk = FUNC0(module, fclk_off);
		while (wkst) {
			clken = wkst;
			FUNC1(clken, module, iclk_off);
			/*
			 * For USBHOST, we don't know whether HOST1 or
			 * HOST2 woke us up, so enable both f-clocks
			 */
			if (module == OMAP3430ES2_USBHOST_MOD)
				clken |= 1 << OMAP3430ES2_EN_USBHOST2_SHIFT;
			FUNC1(clken, module, fclk_off);
			FUNC4(wkst, module, wkst_off);
			wkst = FUNC3(module, wkst_off);
			wkst &= wkst_mask;
			c++;
		}
		FUNC2(iclk, module, iclk_off);
		FUNC2(fclk, module, fclk_off);
	}

	return c;
}