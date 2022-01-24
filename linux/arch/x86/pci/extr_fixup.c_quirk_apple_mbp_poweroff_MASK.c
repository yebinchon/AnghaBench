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
struct resource {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct pci_dev {scalar_t__ devfn; TYPE_1__* bus; struct device dev; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC3 (int,int,char*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;

	if ((!FUNC2(DMI_PRODUCT_NAME, "MacBookPro11,4") &&
	     !FUNC2(DMI_PRODUCT_NAME, "MacBookPro11,5")) ||
	    pdev->bus->number != 0 || pdev->devfn != FUNC0(0x1c, 0))
		return;

	res = FUNC3(0x7fa00000, 0x200000,
				 "MacBook Pro poweroff workaround");
	if (res)
		FUNC1(dev, "claimed %s %pR\n", res->name, res);
	else
		FUNC1(dev, "can't work around MacBook Pro poweroff issue\n");
}