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
 int XEN_UNPLUG_ALL ; 
 int XEN_UNPLUG_NEVER ; 
 int XEN_UNPLUG_UNNECESSARY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int xen_platform_pci_unplug ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

bool FUNC3(void)
{
	if (!FUNC0())
		return false;

	/* PV and PVH domains always have them. */
	if (FUNC1() || FUNC2())
		return true;

	/* And user has xen_platform_pci=0 set in guest config as
	 * driver did not modify the value. */
	if (xen_platform_pci_unplug == 0)
		return false;

	if (xen_platform_pci_unplug & XEN_UNPLUG_NEVER)
		return false;

	if (xen_platform_pci_unplug & XEN_UNPLUG_ALL)
		return true;

	/* This is an odd one - we are going to run legacy
	 * and PV drivers at the same time. */
	if (xen_platform_pci_unplug & XEN_UNPLUG_UNNECESSARY)
		return true;

	/* And the caller has to follow with xen_pv_{disk,nic}_devices
	 * to be certain which driver can load. */
	return false;
}