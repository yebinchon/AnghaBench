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
 int /*<<< orphan*/  ipmi_pci_driver ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int pci_registered ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ si_trypci ; 

void FUNC2(void)
{
	if (si_trypci) {
		int rv = FUNC0(&ipmi_pci_driver);
		if (rv)
			FUNC1("Unable to register PCI driver: %d\n", rv);
		else
			pci_registered = true;
	}
}