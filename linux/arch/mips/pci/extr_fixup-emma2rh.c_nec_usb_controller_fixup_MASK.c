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
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 scalar_t__ EMMA2RH_USB_SLOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	if (FUNC0(dev->devfn) == EMMA2RH_USB_SLOT)
		/* on board USB controller configuration */
		FUNC1(dev, 0xe4, 1 << 5);
}