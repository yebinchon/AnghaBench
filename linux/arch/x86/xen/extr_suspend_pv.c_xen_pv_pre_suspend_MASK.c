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
struct TYPE_6__ {TYPE_2__ console; void* store_mfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FIX_PARAVIRT_BOOTMAP ; 
 int /*<<< orphan*/ * HYPERVISOR_shared_info ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  xen_dummy_shared_info ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* xen_start_info ; 

void FUNC8(void)
{
	FUNC7();

	xen_start_info->store_mfn = FUNC6(xen_start_info->store_mfn);
	xen_start_info->console.domU.mfn =
		FUNC6(xen_start_info->console.domU.mfn);

	FUNC1(!FUNC5());

	HYPERVISOR_shared_info = &xen_dummy_shared_info;
	if (FUNC2(FUNC4(FIX_PARAVIRT_BOOTMAP),
					 FUNC3(0), 0))
		FUNC0();
}