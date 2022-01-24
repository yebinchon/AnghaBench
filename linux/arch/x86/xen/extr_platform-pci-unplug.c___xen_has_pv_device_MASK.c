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
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int xen_platform_pci_unplug ; 

__attribute__((used)) static bool FUNC2(int state)
{
	/* HVM domains might or might not */
	if (FUNC1() && (xen_platform_pci_unplug & state))
		return true;

	return FUNC0();
}