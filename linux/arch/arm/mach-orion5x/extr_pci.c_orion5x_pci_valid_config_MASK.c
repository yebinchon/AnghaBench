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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ orion5x_pci_cardbus_mode ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(int bus, u32 devfn)
{
	if (bus == FUNC2()) {
		/*
		 * Don't go out for local device
		 */
		if (FUNC1(devfn) == 0 && FUNC0(devfn) != 0)
			return 0;

		/*
		 * When the PCI signals are directly connected to a
		 * Cardbus slot, ignore all but device IDs 0 and 1.
		 */
		if (orion5x_pci_cardbus_mode && FUNC1(devfn) > 1)
			return 0;
	}

	return 1;
}