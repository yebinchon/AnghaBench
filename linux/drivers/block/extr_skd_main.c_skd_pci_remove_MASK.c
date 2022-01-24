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
struct skd_device {scalar_t__ pcie_error_reporting_is_enabled; scalar_t__* mem_map; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SKD_MAX_BARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct skd_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct skd_device*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	int i;
	struct skd_device *skdev;

	skdev = FUNC4(pdev);
	if (!skdev) {
		FUNC0(&pdev->dev, "no device data for PCI\n");
		return;
	}
	FUNC9(skdev);
	FUNC8(skdev);

	for (i = 0; i < SKD_MAX_BARS; i++)
		if (skdev->mem_map[i])
			FUNC1(skdev->mem_map[i]);

	if (skdev->pcie_error_reporting_is_enabled)
		FUNC3(pdev);

	FUNC7(skdev);

	FUNC5(pdev);
	FUNC2(pdev);
	FUNC6(pdev, NULL);

	return;
}