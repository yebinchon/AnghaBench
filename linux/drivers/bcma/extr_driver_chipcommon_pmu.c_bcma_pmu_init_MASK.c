#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rev; } ;
struct bcma_drv_cc {TYPE_1__ pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_PMU_CTL ; 
 int /*<<< orphan*/  BCMA_CC_PMU_CTL_NOILPONW ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_drv_cc*) ; 

void FUNC5(struct bcma_drv_cc *cc)
{
	if (cc->pmu.rev == 1)
		FUNC0(cc, BCMA_CC_PMU_CTL,
				~BCMA_CC_PMU_CTL_NOILPONW);
	else
		FUNC3(cc, BCMA_CC_PMU_CTL,
			       BCMA_CC_PMU_CTL_NOILPONW);

	FUNC1(cc);
	FUNC2(cc);
	FUNC4(cc);
}