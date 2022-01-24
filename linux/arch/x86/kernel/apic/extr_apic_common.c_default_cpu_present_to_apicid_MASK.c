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

/* Variables and functions */
 int BAD_APICID ; 
 scalar_t__ FUNC0 (int) ; 
 int nr_cpu_ids ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  x86_bios_cpu_apicid ; 

int FUNC2(int mps_cpu)
{
	if (mps_cpu < nr_cpu_ids && FUNC0(mps_cpu))
		return (int)FUNC1(x86_bios_cpu_apicid, mps_cpu);
	else
		return BAD_APICID;
}