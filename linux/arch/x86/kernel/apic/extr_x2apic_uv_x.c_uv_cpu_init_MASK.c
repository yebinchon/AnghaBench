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
struct TYPE_2__ {int /*<<< orphan*/  pnode; int /*<<< orphan*/  nr_online_cpus; } ;

/* Variables and functions */
 scalar_t__ UV_NON_UNIQUE_APIC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* uv_hub_info ; 

void FUNC3(void)
{
	/* CPU 0 initialization will be done via uv_system_init. */
	if (FUNC2() == 0)
		return;

	uv_hub_info->nr_online_cpus++;

	if (FUNC0() == UV_NON_UNIQUE_APIC)
		FUNC1(uv_hub_info->pnode);
}