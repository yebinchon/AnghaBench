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
struct pci_dn {int dummy; } ;
struct eeh_dev {int mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* restore_config ) (struct pci_dn*) ;} ;

/* Variables and functions */
 int EEH_DEV_BRIDGE ; 
 struct pci_dn* FUNC0 (struct eeh_dev*) ; 
 TYPE_1__* eeh_ops ; 
 int /*<<< orphan*/  FUNC1 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*) ; 

__attribute__((used)) static void FUNC4(struct eeh_dev *edev, void *flag)
{
	struct pci_dn *pdn = FUNC0(edev);

	/* Do special restore for bridges */
	if (edev->mode & EEH_DEV_BRIDGE)
		FUNC1(edev);
	else
		FUNC2(edev);

	if (eeh_ops->restore_config && pdn)
		eeh_ops->restore_config(pdn);
}