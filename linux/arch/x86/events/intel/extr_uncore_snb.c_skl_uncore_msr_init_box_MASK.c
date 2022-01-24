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
struct intel_uncore_box {int /*<<< orphan*/  flags; TYPE_1__* pmu; } ;
struct TYPE_2__ {int pmu_idx; } ;

/* Variables and functions */
 int SKL_UNC_GLOBAL_CTL_CORE_ALL ; 
 int /*<<< orphan*/  SKL_UNC_PERF_GLOBAL_CTL ; 
 int SNB_UNC_GLOBAL_CTL_EN ; 
 int /*<<< orphan*/  UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct intel_uncore_box *box)
{
	if (box->pmu->pmu_idx == 0) {
		FUNC1(SKL_UNC_PERF_GLOBAL_CTL,
			SNB_UNC_GLOBAL_CTL_EN | SKL_UNC_GLOBAL_CTL_CORE_ALL);
	}

	/* The 8th CBOX has different MSR space */
	if (box->pmu->pmu_idx == 7)
		FUNC0(UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS, &box->flags);
}