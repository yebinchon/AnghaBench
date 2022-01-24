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
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/ * regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; } ;
struct platform_device {TYPE_1__* resource; TYPE_2__ dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 scalar_t__ IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_hcd*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC9 (struct hc_driver const*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC11(const struct hc_driver *driver,
			 struct platform_device *pdev)
{
	int retval;
	struct usb_hcd *hcd;

	if (pdev->resource[1].flags != IORESOURCE_IRQ) {
		FUNC5("resource[1] is not IORESOURCE_IRQ");
		return -ENOMEM;
	}

	pdev->dev.coherent_dma_mask = FUNC0(32);
	pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;

	hcd = FUNC9(driver, &pdev->dev, "mcs814x");
	if (hcd == NULL)
		return -ENOMEM;

	hcd->rsrc_start = pdev->resource[0].start;
	hcd->rsrc_len = pdev->resource[0].end - pdev->resource[0].start + 1;
	if (!FUNC7(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC10(hcd);
		retval = -EBUSY;
		goto err1;
	}

	hcd->regs = FUNC2(hcd->rsrc_start, hcd->rsrc_len);
	if (hcd->regs == NULL) {
		FUNC5("ioremap failed");
		retval = -ENOMEM;
		goto err2;
	}

	FUNC4(FUNC1(hcd));

	retval = FUNC8(hcd, pdev->resource[1].start, IRQF_DISABLED);
	if (retval == 0)
		return retval;

	FUNC3(hcd->regs);
err2:
	FUNC6(hcd->rsrc_start, hcd->rsrc_len);
err1:
	FUNC10(hcd);

	return retval;
}