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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_RESET_DEACTIVATE ; 
 int /*<<< orphan*/  EEH_RESET_HOT ; 
 struct pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_controller*,int /*<<< orphan*/ ) ; 

void FUNC4(struct pci_dev *dev)
{
	struct pci_controller *hose;

	if (FUNC1(dev->bus)) {
		hose = FUNC0(dev->bus);
		FUNC3(hose, EEH_RESET_HOT);
		FUNC3(hose, EEH_RESET_DEACTIVATE);
	} else {
		FUNC2(dev, EEH_RESET_HOT);
		FUNC2(dev, EEH_RESET_DEACTIVATE);
	}
}