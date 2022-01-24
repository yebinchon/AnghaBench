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
 unsigned long APIC_DM_INIT ; 
 unsigned long APIC_DM_STARTUP ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 

__attribute__((used)) static int FUNC1(int phys_apicid, unsigned long start_rip)
{
	FUNC0(phys_apicid, APIC_DM_INIT);
	FUNC0(phys_apicid, APIC_DM_STARTUP |
		(start_rip >> 12));

	return 0;
}