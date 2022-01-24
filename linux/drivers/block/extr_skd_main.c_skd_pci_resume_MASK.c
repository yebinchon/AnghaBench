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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u32 ;
struct skd_device {int pcie_error_reporting_is_enabled; scalar_t__* mem_map; int /*<<< orphan*/  waitq; scalar_t__* mem_size; scalar_t__* mem_phys; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int SKD_MAX_BARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skd_device* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct pci_dev*,int) ; 
 scalar_t__ FUNC16 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct skd_device*) ; 
 int FUNC23 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct skd_device*) ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pdev)
{
	int i;
	int rc = 0;
	struct skd_device *skdev;

	skdev = FUNC12(pdev);
	if (!skdev) {
		FUNC2(&pdev->dev, "no device data for PCI\n");
		return -1;
	}

	FUNC19(pdev, PCI_D0);
	FUNC11(pdev, PCI_D0, 0);
	FUNC17(pdev);

	rc = FUNC9(pdev);
	if (rc)
		return rc;
	rc = FUNC14(pdev, DRV_NAME);
	if (rc)
		goto err_out;
	rc = FUNC3(&pdev->dev, FUNC0(64));
	if (rc)
		rc = FUNC3(&pdev->dev, FUNC0(32));
	if (rc) {
		FUNC2(&pdev->dev, "DMA mask error %d\n", rc);
		goto err_out_regions;
	}

	FUNC18(pdev);
	rc = FUNC10(pdev);
	if (rc) {
		FUNC2(&pdev->dev,
			"bad enable of PCIe error reporting rc=%d\n", rc);
		skdev->pcie_error_reporting_is_enabled = 0;
	} else
		skdev->pcie_error_reporting_is_enabled = 1;

	for (i = 0; i < SKD_MAX_BARS; i++) {

		skdev->mem_phys[i] = FUNC16(pdev, i);
		skdev->mem_size[i] = (u32)FUNC15(pdev, i);
		skdev->mem_map[i] = FUNC5(skdev->mem_phys[i],
					    skdev->mem_size[i]);
		if (!skdev->mem_map[i]) {
			FUNC2(&pdev->dev, "Unable to map adapter memory!\n");
			rc = -ENODEV;
			goto err_out_iounmap;
		}
		FUNC1(&pdev->dev, "mem_map=%p, phyd=%016llx, size=%d\n",
			skdev->mem_map[i], (uint64_t)skdev->mem_phys[i],
			skdev->mem_size[i]);
	}
	rc = FUNC20(skdev);
	if (rc) {
		FUNC2(&pdev->dev, "interrupt resource error %d\n", rc);
		goto err_out_iounmap;
	}

	rc = FUNC23(skdev);
	if (rc)
		goto err_out_timer;

	FUNC4(&skdev->waitq);

	FUNC22(skdev);

	return rc;

err_out_timer:
	FUNC24(skdev);
	FUNC21(skdev);

err_out_iounmap:
	for (i = 0; i < SKD_MAX_BARS; i++)
		if (skdev->mem_map[i])
			FUNC6(skdev->mem_map[i]);

	if (skdev->pcie_error_reporting_is_enabled)
		FUNC8(pdev);

err_out_regions:
	FUNC13(pdev);

err_out:
	FUNC7(pdev);
	return rc;
}