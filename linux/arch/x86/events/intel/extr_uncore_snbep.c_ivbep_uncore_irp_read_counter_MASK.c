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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;

/* Variables and functions */
 scalar_t__* ivbep_uncore_irp_ctrs ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC1(struct intel_uncore_box *box, struct perf_event *event)
{
	struct pci_dev *pdev = box->pci_dev;
	struct hw_perf_event *hwc = &event->hw;
	u64 count = 0;

	FUNC0(pdev, ivbep_uncore_irp_ctrs[hwc->idx], (u32 *)&count);
	FUNC0(pdev, ivbep_uncore_irp_ctrs[hwc->idx] + 4, (u32 *)&count + 1);

	return count;
}