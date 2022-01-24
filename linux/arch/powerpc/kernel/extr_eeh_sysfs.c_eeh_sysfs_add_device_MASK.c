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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct eeh_dev {int mode; } ;

/* Variables and functions */
 int EEH_DEV_SYSFS ; 
 int /*<<< orphan*/  dev_attr_eeh_mode ; 
 int /*<<< orphan*/  dev_attr_eeh_pe_config_addr ; 
 int /*<<< orphan*/  dev_attr_eeh_pe_state ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 struct eeh_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(struct pci_dev *pdev)
{
	struct eeh_dev *edev = FUNC3(pdev);
	int rc=0;

	if (!FUNC1())
		return;

	if (edev && (edev->mode & EEH_DEV_SYSFS))
		return;

	rc += FUNC0(&pdev->dev, &dev_attr_eeh_mode);
	rc += FUNC0(&pdev->dev, &dev_attr_eeh_pe_config_addr);
	rc += FUNC0(&pdev->dev, &dev_attr_eeh_pe_state);
	rc += FUNC2(pdev);

	if (rc)
		FUNC4("EEH: Unable to create sysfs entries\n");
	else if (edev)
		edev->mode |= EEH_DEV_SYSFS;
}