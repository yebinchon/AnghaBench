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
struct xilly_endpoint {int dma_using_dac; int /*<<< orphan*/  dev; int /*<<< orphan*/  registers; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  PCIE_LINK_STATE_L0S ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xilly_endpoint*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_hw ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct xilly_endpoint*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct xilly_endpoint*) ; 
 struct xilly_endpoint* FUNC13 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xillybus_isr ; 
 int /*<<< orphan*/  xillyname ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pdev,
		       const struct pci_device_id *ent)
{
	struct xilly_endpoint *endpoint;
	int rc;

	endpoint = FUNC13(pdev, &pdev->dev, &pci_hw);

	if (!endpoint)
		return -ENOMEM;

	FUNC7(pdev, endpoint);

	rc = FUNC9(pdev);
	if (rc) {
		FUNC1(endpoint->dev,
			"pcim_enable_device() failed. Aborting.\n");
		return rc;
	}

	/* L0s has caused packet drops. No power saving, thank you. */

	FUNC3(pdev, PCIE_LINK_STATE_L0S);

	if (!(FUNC5(pdev, 0) & IORESOURCE_MEM)) {
		FUNC1(endpoint->dev,
			"Incorrect BAR configuration. Aborting.\n");
		return -ENODEV;
	}

	rc = FUNC10(pdev, 0x01, xillyname);
	if (rc) {
		FUNC1(endpoint->dev,
			"pcim_iomap_regions() failed. Aborting.\n");
		return rc;
	}

	endpoint->registers = FUNC11(pdev)[0];

	FUNC8(pdev);

	/* Set up a single MSI interrupt */
	if (FUNC4(pdev)) {
		FUNC1(endpoint->dev,
			"Failed to enable MSI interrupts. Aborting.\n");
		return -ENODEV;
	}
	rc = FUNC2(&pdev->dev, pdev->irq, xillybus_isr, 0,
			      xillyname, endpoint);
	if (rc) {
		FUNC1(endpoint->dev,
			"Failed to register MSI handler. Aborting.\n");
		return -ENODEV;
	}

	/*
	 * Some (old and buggy?) hardware drops 64-bit addressed PCIe packets,
	 * even when the PCIe driver claims that a 64-bit mask is OK. On the
	 * other hand, on some architectures, 64-bit addressing is mandatory.
	 * So go for the 64-bit mask only when failing is the other option.
	 */

	if (!FUNC6(pdev, FUNC0(32))) {
		endpoint->dma_using_dac = 0;
	} else if (!FUNC6(pdev, FUNC0(64))) {
		endpoint->dma_using_dac = 1;
	} else {
		FUNC1(endpoint->dev, "Failed to set DMA mask. Aborting.\n");
		return -ENODEV;
	}

	return FUNC12(endpoint);
}