#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int rsrc_start; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/ * regs; } ;
struct resource {int start; } ;
struct TYPE_6__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hc_driver {int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hc_driver mcs814x_ehci_hc_driver ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int FUNC11 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC12 (struct hc_driver const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct usb_hcd *hcd;
	const struct hc_driver *driver = &mcs814x_ehci_hc_driver;
	struct resource *res;
	int irq;
	int retval;

	if (FUNC13())
		return -ENODEV;

	res = FUNC7(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC2(&pdev->dev,
			"Found HC with no IRQ. Check %s setup!\n",
			FUNC4(&pdev->dev));
		return -ENODEV;
	}
	irq = res->start;

	pdev->dev.coherent_dma_mask = FUNC0(32);
	pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;

	hcd = FUNC12(driver, &pdev->dev, FUNC4(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto fail_create_hcd;
	}

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev,
			"Found HC with no register addr. Check %s setup!\n",
			FUNC4(&pdev->dev));
		retval = -ENODEV;
		goto fail_request_resource;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC10(res);

	if (!FUNC9(hcd->rsrc_start, hcd->rsrc_len,
				driver->description)) {
		FUNC1(&pdev->dev, "controller already in use\n");
		retval = -EBUSY;
		goto fail_request_resource;
	}

	hcd->regs = FUNC5(hcd->rsrc_start, hcd->rsrc_len);
	if (hcd->regs == NULL) {
		FUNC1(&pdev->dev, "error mapping memory\n");
		retval = -EFAULT;
		goto fail_ioremap;
	}

	retval = FUNC11(hcd, irq, IRQF_SHARED);
	if (retval)
		goto fail_add_hcd;

	FUNC3(&pdev->dev, "added MCS814X EHCI driver\n");

	return retval;

fail_add_hcd:
	FUNC6(hcd->regs);
fail_ioremap:
	FUNC8(hcd->rsrc_start, hcd->rsrc_len);
fail_request_resource:
	FUNC14(hcd);
fail_create_hcd:
	FUNC2(&pdev->dev, "init %s fail, %d\n", FUNC4(&pdev->dev), retval);
	return retval;
}