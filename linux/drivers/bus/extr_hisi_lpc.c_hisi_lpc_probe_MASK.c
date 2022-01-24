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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  fwnode; } ;
struct platform_device {struct device dev; } ;
struct logic_pio_hwaddr {scalar_t__ io_start; scalar_t__ size; int /*<<< orphan*/ * ops; struct hisi_lpc_dev* hostdata; int /*<<< orphan*/  flags; int /*<<< orphan*/  fwnode; } ;
struct hisi_lpc_dev {struct logic_pio_hwaddr* io_host; int /*<<< orphan*/  membase; int /*<<< orphan*/  cycle_lock; } ;
struct acpi_device {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOGIC_PIO_INDIRECT ; 
 scalar_t__ PIO_INDIRECT_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct hisi_lpc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  hisi_lpc_ops ; 
 int FUNC9 (struct logic_pio_hwaddr*) ; 
 int /*<<< orphan*/  FUNC10 (struct logic_pio_hwaddr*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct acpi_device *acpi_device = FUNC0(dev);
	struct logic_pio_hwaddr *range;
	struct hisi_lpc_dev *lpcdev;
	resource_size_t io_end;
	struct resource *res;
	int ret;

	lpcdev = FUNC7(dev, sizeof(*lpcdev), GFP_KERNEL);
	if (!lpcdev)
		return -ENOMEM;

	FUNC13(&lpcdev->cycle_lock);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	lpcdev->membase = FUNC6(dev, res);
	if (FUNC1(lpcdev->membase))
		return FUNC2(lpcdev->membase);

	range = FUNC7(dev, sizeof(*range), GFP_KERNEL);
	if (!range)
		return -ENOMEM;

	range->fwnode = dev->fwnode;
	range->flags = LOGIC_PIO_INDIRECT;
	range->size = PIO_INDIRECT_SIZE;
	range->hostdata = lpcdev;
	range->ops = &hisi_lpc_ops;
	lpcdev->io_host = range;

	ret = FUNC9(range);
	if (ret) {
		FUNC3(dev, "register IO range failed (%d)!\n", ret);
		return ret;
	}

	/* register the LPC host PIO resources */
	if (acpi_device)
		ret = FUNC8(dev);
	else
		ret = FUNC11(dev->of_node, NULL, NULL, dev);
	if (ret) {
		FUNC10(range);
		return ret;
	}

	FUNC5(dev, lpcdev);

	io_end = lpcdev->io_host->io_start + lpcdev->io_host->size;
	FUNC4(dev, "registered range [%pa - %pa]\n",
		 &lpcdev->io_host->io_start, &io_end);

	return ret;
}