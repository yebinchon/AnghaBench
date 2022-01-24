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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int EIO ; 
 int SKD_MAX_BARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct skd_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct skd_device*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev, pm_message_t state)
{
	int i;
	struct skd_device *skdev;

	skdev = FUNC5(pdev);
	if (!skdev) {
		FUNC0(&pdev->dev, "no device data for PCI\n");
		return -EIO;
	}

	FUNC10(skdev);

	FUNC9(skdev);

	for (i = 0; i < SKD_MAX_BARS; i++)
		if (skdev->mem_map[i])
			FUNC1(skdev->mem_map[i]);

	if (skdev->pcie_error_reporting_is_enabled)
		FUNC4(pdev);

	FUNC6(pdev);
	FUNC7(pdev);
	FUNC3(pdev);
	FUNC8(pdev, FUNC2(pdev, state));
	return 0;
}