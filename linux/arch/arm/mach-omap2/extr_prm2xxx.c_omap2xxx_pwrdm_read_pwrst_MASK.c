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
typedef  int /*<<< orphan*/  u8 ;
struct powerdomain {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP2_PM_PWSTST ; 
 int /*<<< orphan*/  OMAP_POWERSTATEST_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct powerdomain *pwrdm)
{
	u8 omap2xxx_pwrst;

	omap2xxx_pwrst = FUNC0(pwrdm->prcm_offs,
						       OMAP2_PM_PWSTST,
						       OMAP_POWERSTATEST_MASK);

	return FUNC1(omap2xxx_pwrst);
}