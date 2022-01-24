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
struct skd_device {int pcie_error_reporting_is_enabled; scalar_t__ gendisk_on; scalar_t__* mem_map; int /*<<< orphan*/  waitq; scalar_t__* mem_size; scalar_t__* mem_phys; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int HZ ; 
 int SKD_MAX_BARS ; 
 int SKD_START_WAIT_SECONDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct pci_dev*,int) ; 
 scalar_t__ FUNC16 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct skd_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct skd_device*) ; 
 struct skd_device* FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct skd_device*) ; 
 int skd_major ; 
 int /*<<< orphan*/  FUNC24 (struct skd_device*,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct skd_device*) ; 
 int FUNC27 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct skd_device*) ; 
 int FUNC29 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC30(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int i;
	int rc = 0;
	char pci_str[32];
	struct skd_device *skdev;

	FUNC2(&pdev->dev, "vendor=%04X device=%04x\n", pdev->vendor,
		pdev->device);

	rc = FUNC11(pdev);
	if (rc)
		return rc;
	rc = FUNC14(pdev, DRV_NAME);
	if (rc)
		goto err_out;
	rc = FUNC5(&pdev->dev, FUNC1(64));
	if (rc)
		rc = FUNC5(&pdev->dev, FUNC1(32));
	if (rc) {
		FUNC3(&pdev->dev, "DMA mask error %d\n", rc);
		goto err_out_regions;
	}

	if (!skd_major) {
		rc = FUNC19(0, DRV_NAME);
		if (rc < 0)
			goto err_out_regions;
		FUNC0(!rc);
		skd_major = rc;
	}

	skdev = FUNC22(pdev);
	if (skdev == NULL) {
		rc = -ENOMEM;
		goto err_out_regions;
	}

	FUNC24(skdev, pci_str);
	FUNC4(&pdev->dev, "%s 64bit\n", pci_str);

	FUNC18(pdev);
	rc = FUNC12(pdev);
	if (rc) {
		FUNC3(&pdev->dev,
			"bad enable of PCIe error reporting rc=%d\n", rc);
		skdev->pcie_error_reporting_is_enabled = 0;
	} else
		skdev->pcie_error_reporting_is_enabled = 1;

	FUNC17(pdev, skdev);

	for (i = 0; i < SKD_MAX_BARS; i++) {
		skdev->mem_phys[i] = FUNC16(pdev, i);
		skdev->mem_size[i] = (u32)FUNC15(pdev, i);
		skdev->mem_map[i] = FUNC7(skdev->mem_phys[i],
					    skdev->mem_size[i]);
		if (!skdev->mem_map[i]) {
			FUNC3(&pdev->dev,
				"Unable to map adapter memory!\n");
			rc = -ENODEV;
			goto err_out_iounmap;
		}
		FUNC2(&pdev->dev, "mem_map=%p, phyd=%016llx, size=%d\n",
			skdev->mem_map[i], (uint64_t)skdev->mem_phys[i],
			skdev->mem_size[i]);
	}

	rc = FUNC20(skdev);
	if (rc) {
		FUNC3(&pdev->dev, "interrupt resource error %d\n", rc);
		goto err_out_iounmap;
	}

	rc = FUNC27(skdev);
	if (rc)
		goto err_out_timer;

	FUNC6(&skdev->waitq);

	FUNC26(skdev);

	rc = FUNC29(skdev->waitq,
					      (skdev->gendisk_on),
					      (SKD_START_WAIT_SECONDS * HZ));
	if (skdev->gendisk_on > 0) {
		/* device came on-line after reset */
		FUNC21(&pdev->dev, skdev);
		rc = 0;
	} else {
		/* we timed out, something is wrong with the device,
		   don't add the disk structure */
		FUNC3(&pdev->dev, "error: waiting for s1120 timed out %d!\n",
			rc);
		/* in case of no error; we timeout with ENXIO */
		if (!rc)
			rc = -ENXIO;
		goto err_out_timer;
	}

	return rc;

err_out_timer:
	FUNC28(skdev);
	FUNC25(skdev);

err_out_iounmap:
	for (i = 0; i < SKD_MAX_BARS; i++)
		if (skdev->mem_map[i])
			FUNC8(skdev->mem_map[i]);

	if (skdev->pcie_error_reporting_is_enabled)
		FUNC10(pdev);

	FUNC23(skdev);

err_out_regions:
	FUNC13(pdev);

err_out:
	FUNC9(pdev);
	FUNC17(pdev, NULL);
	return rc;
}