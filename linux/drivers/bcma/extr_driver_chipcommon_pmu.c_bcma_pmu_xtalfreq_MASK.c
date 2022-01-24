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
struct bcma_drv_cc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_PMU_STAT ; 
 int BCMA_CC_PMU_STAT_EXT_LPO_AVAIL ; 
 int /*<<< orphan*/  BCMA_CC_PMU_XTAL_FREQ ; 
 int BCMA_CC_PMU_XTAL_FREQ_ILPCTL_MASK ; 
 int /*<<< orphan*/  BCMA_CC_PMU_XTAL_FREQ_MEASURE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static u32 FUNC4(struct bcma_drv_cc *cc)
{
	u32 ilp_ctl, alp_hz;

	if (!(FUNC1(cc, BCMA_CC_PMU_STAT) &
	      BCMA_CC_PMU_STAT_EXT_LPO_AVAIL))
		return 0;

	FUNC2(cc, BCMA_CC_PMU_XTAL_FREQ,
			 FUNC0(BCMA_CC_PMU_XTAL_FREQ_MEASURE_SHIFT));
	FUNC3(1000, 2000);

	ilp_ctl = FUNC1(cc, BCMA_CC_PMU_XTAL_FREQ);
	ilp_ctl &= BCMA_CC_PMU_XTAL_FREQ_ILPCTL_MASK;

	FUNC2(cc, BCMA_CC_PMU_XTAL_FREQ, 0);

	alp_hz = ilp_ctl * 32768 / 4;
	return (alp_hz + 50000) / 100000 * 100;
}