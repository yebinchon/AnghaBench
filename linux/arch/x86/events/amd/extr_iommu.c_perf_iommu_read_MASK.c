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
typedef  int u64 ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; int /*<<< orphan*/  iommu_cntr; int /*<<< orphan*/  iommu_bank; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int COUNTER_SHIFT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOMMU_PC_COUNTER_REG ; 
 scalar_t__ FUNC1 (struct amd_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct amd_iommu* FUNC5 (struct perf_event*) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event)
{
	u64 count, prev, delta;
	struct hw_perf_event *hwc = &event->hw;
	struct amd_iommu *iommu = FUNC5(event);

	if (FUNC1(iommu, hwc->iommu_bank, hwc->iommu_cntr,
				 IOMMU_PC_COUNTER_REG, &count))
		return;

	/* IOMMU pc counter register is only 48 bits */
	count &= FUNC0(47, 0);

	prev = FUNC4(&hwc->prev_count);
	if (FUNC3(&hwc->prev_count, prev, count) != prev)
		return;

	/* Handle 48-bit counter overflow */
	delta = (count << COUNTER_SHIFT) - (prev << COUNTER_SHIFT);
	delta >>= COUNTER_SHIFT;
	FUNC2(delta, &event->count);
}