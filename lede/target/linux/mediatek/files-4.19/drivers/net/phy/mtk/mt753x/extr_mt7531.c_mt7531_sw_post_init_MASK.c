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
struct gsw_mt753x {int (* mmd_read ) (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* mii_read ) (struct gsw_mt753x*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mmd_write ) (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* mii_write ) (struct gsw_mt753x*,int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int BMCR_ISOLATE ; 
 int /*<<< orphan*/  CHIP_REV ; 
 int CHIP_REV_E1 ; 
 int CHIP_REV_M ; 
 int /*<<< orphan*/  GBE_EFUSE ; 
 int GBE_EFUSE_SETTING ; 
 int GBE_SEL_EFUSE_EN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MT753X_NUM_PHYS ; 
 int /*<<< orphan*/  PHY_DEV1F ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_403 ; 
 int PHY_EN_BYPASS_MODE ; 
 int POWER_ON_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct gsw_mt753x*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gsw_mt753x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC4 (struct gsw_mt753x*) ; 
 int FUNC5 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct gsw_mt753x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gsw_mt753x*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct gsw_mt753x *gsw)
{
	int i;
	u32 val;

	FUNC3(gsw);

	/* Internal PHYs are disabled by default. SW should enable them.
	 * Note that this may already be enabled in bootloader stage.
	 */
	val = gsw->mmd_read(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403);
	val |= PHY_EN_BYPASS_MODE;
	val &= ~POWER_ON_OFF;
	gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403, val);

	FUNC4(gsw);

	for (i = 0; i < MT753X_NUM_PHYS; i++) {
		val = gsw->mii_read(gsw, i, MII_BMCR);
		val &= ~BMCR_ISOLATE;
		gsw->mii_write(gsw, i, MII_BMCR, val);
	}

	for (i = 0; i < MT753X_NUM_PHYS; i++)
		FUNC0(gsw, i);

	for (i = 0; i < MT753X_NUM_PHYS; i++)
		FUNC1(gsw, i);

	val = FUNC5(gsw, CHIP_REV);
	val &= CHIP_REV_M;
	if (val == CHIP_REV_E1) {
		FUNC2(gsw);
	} else {
		val = FUNC5(gsw, GBE_EFUSE);
		if (val & GBE_SEL_EFUSE_EN) {
			val = gsw->mmd_read(gsw, 0, PHY_DEV1F,
					    PHY_DEV1F_REG_403);
			val &= ~GBE_EFUSE_SETTING;
			gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403,
				       val);
		} else {
			FUNC2(gsw);
		}
	}

	return 0;
}