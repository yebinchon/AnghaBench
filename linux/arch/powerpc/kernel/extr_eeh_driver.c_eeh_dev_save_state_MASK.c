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
struct eeh_dev {TYPE_1__* pe; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int EEH_PE_CFG_RESTRICTED ; 
 struct pci_dev* FUNC0 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct eeh_dev *edev, void *userdata)
{
	struct pci_dev *pdev;

	if (!edev)
		return;

	/*
	 * We cannot access the config space on some adapters.
	 * Otherwise, it will cause fenced PHB. We don't save
	 * the content in their config space and will restore
	 * from the initial config space saved when the EEH
	 * device is created.
	 */
	if (edev->pe && (edev->pe->state & EEH_PE_CFG_RESTRICTED))
		return;

	pdev = FUNC0(edev);
	if (!pdev)
		return;

	FUNC1(pdev);
}