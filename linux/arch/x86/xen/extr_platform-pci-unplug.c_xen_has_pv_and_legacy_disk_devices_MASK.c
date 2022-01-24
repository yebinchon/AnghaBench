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
 int XEN_UNPLUG_UNNECESSARY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int xen_platform_pci_unplug ; 
 scalar_t__ FUNC1 () ; 

bool FUNC2(void)
{
	if (!FUNC0())
		return false;

	/* N.B. This is only ever used in HVM mode */
	if (FUNC1())
		return false;

	if (xen_platform_pci_unplug & XEN_UNPLUG_UNNECESSARY)
		return true;

	return false;
}