#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned long long uint64_t ;
typedef  scalar_t__ uint32_t ;
struct xen_pmu_amd_ctxt {int dummy; } ;
struct TYPE_3__ {struct xen_pmu_amd_ctxt amd; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct xen_pmu_data {TYPE_2__ pmu; } ;

/* Variables and functions */
 int XENPMU_IRQ_PROCESSING ; 
 scalar_t__ amd_counters_base ; 
 int amd_msr_step ; 
 int /*<<< orphan*/  counters ; 
 unsigned long long* FUNC0 (struct xen_pmu_amd_ctxt*,int /*<<< orphan*/ ) ; 
 struct xen_pmu_data* FUNC1 () ; 
 int FUNC2 () ; 
 unsigned long long FUNC3 (scalar_t__,int*) ; 

__attribute__((used)) static unsigned long long FUNC4(int counter)
{
	struct xen_pmu_amd_ctxt *ctxt;
	uint64_t *counter_regs;
	struct xen_pmu_data *xenpmu_data = FUNC1();
	uint8_t xenpmu_flags = FUNC2();

	if (!xenpmu_data || !(xenpmu_flags & XENPMU_IRQ_PROCESSING)) {
		uint32_t msr;
		int err;

		msr = amd_counters_base + (counter * amd_msr_step);
		return FUNC3(msr, &err);
	}

	ctxt = &xenpmu_data->pmu.c.amd;
	counter_regs = FUNC0(ctxt, counters);
	return counter_regs[counter];
}