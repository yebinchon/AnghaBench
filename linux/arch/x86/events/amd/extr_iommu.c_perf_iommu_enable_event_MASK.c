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
typedef  int u64 ;
struct hw_perf_event {int /*<<< orphan*/  iommu_cntr; int /*<<< orphan*/  iommu_bank; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct hw_perf_event*) ; 
 int FUNC2 (struct hw_perf_event*) ; 
 int FUNC3 (struct hw_perf_event*) ; 
 int FUNC4 (struct hw_perf_event*) ; 
 int FUNC5 (struct hw_perf_event*) ; 
 int FUNC6 (struct hw_perf_event*) ; 
 int FUNC7 (struct hw_perf_event*) ; 
 int /*<<< orphan*/  IOMMU_PC_COUNTER_SRC_REG ; 
 int /*<<< orphan*/  IOMMU_PC_DEVID_MATCH_REG ; 
 int /*<<< orphan*/  IOMMU_PC_DOMID_MATCH_REG ; 
 int /*<<< orphan*/  IOMMU_PC_PASID_MATCH_REG ; 
 int /*<<< orphan*/  FUNC8 (struct amd_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct amd_iommu* FUNC9 (struct perf_event*) ; 

__attribute__((used)) static void FUNC10(struct perf_event *ev)
{
	struct amd_iommu *iommu = FUNC9(ev);
	struct hw_perf_event *hwc = &ev->hw;
	u8 bank = hwc->iommu_bank;
	u8 cntr = hwc->iommu_cntr;
	u64 reg = 0ULL;

	reg = FUNC1(hwc);
	FUNC8(iommu, bank, cntr, IOMMU_PC_COUNTER_SRC_REG, &reg);

	reg = FUNC3(hwc);
	reg = FUNC2(hwc) | (reg << 32);
	if (reg)
		reg |= FUNC0(31);
	FUNC8(iommu, bank, cntr, IOMMU_PC_DEVID_MATCH_REG, &reg);

	reg = FUNC7(hwc);
	reg = FUNC6(hwc) | (reg << 32);
	if (reg)
		reg |= FUNC0(31);
	FUNC8(iommu, bank, cntr, IOMMU_PC_PASID_MATCH_REG, &reg);

	reg = FUNC5(hwc);
	reg = FUNC4(hwc) | (reg << 32);
	if (reg)
		reg |= FUNC0(31);
	FUNC8(iommu, bank, cntr, IOMMU_PC_DOMID_MATCH_REG, &reg);
}