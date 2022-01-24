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
typedef  int u64 ;
struct TYPE_3__ {int config; scalar_t__ reg; } ;
struct hw_perf_event {int config; scalar_t__ config_base; TYPE_1__ extra_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  perf_ctr_virt_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC2(struct hw_perf_event *hwc,
					  u64 enable_mask)
{
	u64 disable_mask = FUNC0(cpu_hw_events.perf_ctr_virt_mask);

	if (hwc->extra_reg.reg)
		FUNC1(hwc->extra_reg.reg, hwc->extra_reg.config);
	FUNC1(hwc->config_base, (hwc->config | enable_mask) & ~disable_mask);
}