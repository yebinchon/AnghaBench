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
struct skd_device {int /*<<< orphan*/ * msix_entries; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SKD_MAX_MSIX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct skd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC4(struct skd_device *skdev)
{
	struct pci_dev *pdev = skdev->pdev;

	if (skdev->msix_entries) {
		int i;

		for (i = 0; i < SKD_MAX_MSIX_COUNT; i++) {
			FUNC0(&pdev->dev, FUNC3(pdev, i),
					skdev);
		}

		FUNC1(skdev->msix_entries);
		skdev->msix_entries = NULL;
	} else {
		FUNC0(&pdev->dev, pdev->irq, skdev);
	}

	FUNC2(pdev);
}