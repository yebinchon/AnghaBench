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
struct pci_dev {int dummy; } ;
struct eeh_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* restore_config ) (struct pci_dn*) ;} ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct eeh_dev*) ; 
 struct pci_dn* FUNC1 (struct eeh_dev*) ; 
 TYPE_1__* eeh_ops ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*) ; 

__attribute__((used)) static void FUNC4(struct eeh_dev *edev, void *userdata)
{
	struct pci_dn *pdn = FUNC1(edev);
	struct pci_dev *pdev = FUNC0(edev);
	struct pci_dev *dev = userdata;

	if (!pdev)
		return;

	/* Apply customization from firmware */
	if (pdn && eeh_ops->restore_config)
		eeh_ops->restore_config(pdn);

	/* The caller should restore state for the specified device */
	if (pdev != dev)
		FUNC2(pdev);
}