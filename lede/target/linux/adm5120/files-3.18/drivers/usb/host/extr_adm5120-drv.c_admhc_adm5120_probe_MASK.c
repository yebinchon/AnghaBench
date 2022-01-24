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
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/  regs; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC10 (struct hc_driver const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC12(const struct hc_driver *driver,
		  struct platform_device *dev)
{
	int retval;
	struct usb_hcd *hcd;
	int irq;
	struct resource *regs;

	/* sanity checks */
	regs = FUNC6(dev, IORESOURCE_MEM, 0);
	if (!regs) {
		FUNC0("no IOMEM resource found\n");
		return -ENODEV;
	}

	irq = FUNC5(dev, 0);
	if (irq < 0) {
		FUNC0("no IRQ resource found\n");
		return -ENODEV;
	}

	hcd = FUNC10(driver, &dev->dev, "ADM5120");
	if (!hcd)
		return -ENOMEM;

	hcd->rsrc_start = regs->start;
	hcd->rsrc_len = regs->end - regs->start + 1;

	if (!FUNC8(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC0("request_mem_region failed\n");
		retval = -EBUSY;
		goto err_dev;
	}

	hcd->regs = FUNC3(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC0("ioremap failed\n");
		retval = -ENOMEM;
		goto err_mem;
	}

	FUNC1(FUNC2(hcd));

	retval = FUNC9(hcd, irq, 0);
	if (retval)
		goto err_io;

	return 0;

err_io:
	FUNC4(hcd->regs);
err_mem:
	FUNC7(hcd->rsrc_start, hcd->rsrc_len);
err_dev:
	FUNC11(hcd);
	return retval;
}