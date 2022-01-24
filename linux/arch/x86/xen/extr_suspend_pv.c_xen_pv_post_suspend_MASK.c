#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* mfn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; void* store_mfn; int /*<<< orphan*/  shared_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIX_PARAVIRT_BOOTMAP ; 
 void* HYPERVISOR_shared_info ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * xen_cpu_initialized_map ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* xen_start_info ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(int suspend_cancelled)
{
	FUNC5();
	FUNC4(FIX_PARAVIRT_BOOTMAP, xen_start_info->shared_info);
	HYPERVISOR_shared_info = (void *)FUNC2(FIX_PARAVIRT_BOOTMAP);
	FUNC7();

	if (suspend_cancelled) {
		xen_start_info->store_mfn =
			FUNC3(xen_start_info->store_mfn);
		xen_start_info->console.domU.mfn =
			FUNC3(xen_start_info->console.domU.mfn);
	} else {
#ifdef CONFIG_SMP
		BUG_ON(xen_cpu_initialized_map == NULL);
		cpumask_copy(xen_cpu_initialized_map, cpu_online_mask);
#endif
		FUNC8();
	}

	FUNC6();
}