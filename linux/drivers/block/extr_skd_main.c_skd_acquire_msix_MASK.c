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
struct skd_msix_entry {int /*<<< orphan*/  isr_name; } ;
struct skd_device {char* devno; struct skd_msix_entry* msix_entries; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int SKD_MAX_MSIX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct skd_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skd_device*) ; 
 struct skd_msix_entry* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skd_msix_entry*) ; 
 TYPE_1__* msix_entries ; 
 int FUNC6 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct skd_device *skdev)
{
	int i, rc;
	struct pci_dev *pdev = skdev->pdev;

	rc = FUNC6(pdev, SKD_MAX_MSIX_COUNT, SKD_MAX_MSIX_COUNT,
			PCI_IRQ_MSIX);
	if (rc < 0) {
		FUNC1(&skdev->pdev->dev, "failed to enable MSI-X %d\n", rc);
		goto out;
	}

	skdev->msix_entries = FUNC4(SKD_MAX_MSIX_COUNT,
			sizeof(struct skd_msix_entry), GFP_KERNEL);
	if (!skdev->msix_entries) {
		rc = -ENOMEM;
		FUNC1(&skdev->pdev->dev, "msix table allocation error\n");
		goto out;
	}

	/* Enable MSI-X vectors for the base queue */
	for (i = 0; i < SKD_MAX_MSIX_COUNT; i++) {
		struct skd_msix_entry *qentry = &skdev->msix_entries[i];

		FUNC8(qentry->isr_name, sizeof(qentry->isr_name),
			 "%s%d-msix %s", DRV_NAME, skdev->devno,
			 msix_entries[i].name);

		rc = FUNC3(&skdev->pdev->dev,
				FUNC7(skdev->pdev, i),
				msix_entries[i].handler, 0,
				qentry->isr_name, skdev);
		if (rc) {
			FUNC1(&skdev->pdev->dev,
				"Unable to register(%d) MSI-X handler %d: %s\n",
				rc, i, qentry->isr_name);
			goto msix_out;
		}
	}

	FUNC0(&skdev->pdev->dev, "%d msix irq(s) enabled\n",
		SKD_MAX_MSIX_COUNT);
	return 0;

msix_out:
	while (--i >= 0)
		FUNC2(&pdev->dev, FUNC7(pdev, i), skdev);
out:
	FUNC5(skdev->msix_entries);
	skdev->msix_entries = NULL;
	return rc;
}