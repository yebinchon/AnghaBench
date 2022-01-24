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
struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; int /*<<< orphan*/  entry; } ;
struct TYPE_2__ {int state; int /*<<< orphan*/  edevs; } ;

/* Variables and functions */
 int EEH_PE_CFG_RESTRICTED ; 
 struct pci_dev* FUNC0 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct eeh_dev *edev, void *userdata)
{
	struct pci_dev *pdev;

	if (!edev)
		return;

	/*
	 * The content in the config space isn't saved because
	 * the blocked config space on some adapters. We have
	 * to restore the initial saved config space when the
	 * EEH device is created.
	 */
	if (edev->pe && (edev->pe->state & EEH_PE_CFG_RESTRICTED)) {
		if (FUNC2(&edev->entry, &edev->pe->edevs))
			FUNC1(edev->pe);

		return;
	}

	pdev = FUNC0(edev);
	if (!pdev)
		return;

	FUNC3(pdev);
}