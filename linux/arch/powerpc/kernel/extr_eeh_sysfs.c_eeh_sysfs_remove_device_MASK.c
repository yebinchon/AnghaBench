#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sd; } ;
struct TYPE_4__ {TYPE_1__ kobj; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct eeh_dev {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_DEV_SYSFS ; 
 int /*<<< orphan*/  dev_attr_eeh_mode ; 
 int /*<<< orphan*/  dev_attr_eeh_pe_config_addr ; 
 int /*<<< orphan*/  dev_attr_eeh_pe_state ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct eeh_dev* FUNC2 (struct pci_dev*) ; 

void FUNC3(struct pci_dev *pdev)
{
	struct eeh_dev *edev = FUNC2(pdev);

	/*
	 * The parent directory might have been removed. We needn't
	 * continue for that case.
	 */
	if (!pdev->dev.kobj.sd) {
		if (edev)
			edev->mode &= ~EEH_DEV_SYSFS;
		return;
	}

	FUNC0(&pdev->dev, &dev_attr_eeh_mode);
	FUNC0(&pdev->dev, &dev_attr_eeh_pe_config_addr);
	FUNC0(&pdev->dev, &dev_attr_eeh_pe_state);

	FUNC1(pdev);

	if (edev)
		edev->mode &= ~EEH_DEV_SYSFS;
}