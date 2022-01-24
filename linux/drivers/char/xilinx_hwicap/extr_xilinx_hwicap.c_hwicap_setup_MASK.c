#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; int /*<<< orphan*/  end; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct hwicap_drvdata {scalar_t__ mem_size; int /*<<< orphan*/  base_address; TYPE_1__ cdev; scalar_t__ mem_start; scalar_t__ is_open; int /*<<< orphan*/  sem; struct config_registers const* config_regs; struct hwicap_driver_config const* config; struct device* dev; int /*<<< orphan*/  devt; int /*<<< orphan*/  mem_end; } ;
struct hwicap_driver_config {int dummy; } ;
struct device {int dummy; } ;
struct config_registers {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HWICAP_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  XHWICAP_MAJOR ; 
 scalar_t__ XHWICAP_MINOR ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hwicap_fops ; 
 int /*<<< orphan*/  icap_class ; 
 int /*<<< orphan*/  icap_sem ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hwicap_drvdata*) ; 
 struct hwicap_drvdata* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int* probed_devices ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct resource const*) ; 

__attribute__((used)) static int FUNC17(struct device *dev, int id,
		const struct resource *regs_res,
		const struct hwicap_driver_config *config,
		const struct config_registers *config_regs)
{
	dev_t devt;
	struct hwicap_drvdata *drvdata = NULL;
	int retval = 0;

	FUNC4(dev, "Xilinx icap port driver\n");

	FUNC12(&icap_sem);

	if (id < 0) {
		for (id = 0; id < HWICAP_DEVICES; id++)
			if (!probed_devices[id])
				break;
	}
	if (id < 0 || id >= HWICAP_DEVICES) {
		FUNC13(&icap_sem);
		FUNC3(dev, "%s%i too large\n", DRIVER_NAME, id);
		return -EINVAL;
	}
	if (probed_devices[id]) {
		FUNC13(&icap_sem);
		FUNC3(dev, "cannot assign to %s%i; it is already in use\n",
			DRIVER_NAME, id);
		return -EBUSY;
	}

	probed_devices[id] = 1;
	FUNC13(&icap_sem);

	devt = FUNC0(XHWICAP_MAJOR, XHWICAP_MINOR + id);

	drvdata = FUNC10(sizeof(struct hwicap_drvdata), GFP_KERNEL);
	if (!drvdata) {
		retval = -ENOMEM;
		goto failed0;
	}
	FUNC5(dev, (void *)drvdata);

	if (!regs_res) {
		FUNC3(dev, "Couldn't get registers resource\n");
		retval = -EFAULT;
		goto failed1;
	}

	drvdata->mem_start = regs_res->start;
	drvdata->mem_end = regs_res->end;
	drvdata->mem_size = FUNC16(regs_res);

	if (!FUNC15(drvdata->mem_start,
					drvdata->mem_size, DRIVER_NAME)) {
		FUNC3(dev, "Couldn't lock memory region at %Lx\n",
			(unsigned long long) regs_res->start);
		retval = -EBUSY;
		goto failed1;
	}

	drvdata->devt = devt;
	drvdata->dev = dev;
	drvdata->base_address = FUNC7(drvdata->mem_start, drvdata->mem_size);
	if (!drvdata->base_address) {
		FUNC3(dev, "ioremap() failed\n");
		retval = -ENOMEM;
		goto failed2;
	}

	drvdata->config = config;
	drvdata->config_regs = config_regs;

	FUNC11(&drvdata->sem);
	drvdata->is_open = 0;

	FUNC4(dev, "ioremap %llx to %p with size %llx\n",
		 (unsigned long long) drvdata->mem_start,
		 drvdata->base_address,
		 (unsigned long long) drvdata->mem_size);

	FUNC2(&drvdata->cdev, &hwicap_fops);
	drvdata->cdev.owner = THIS_MODULE;
	retval = FUNC1(&drvdata->cdev, devt, 1);
	if (retval) {
		FUNC3(dev, "cdev_add() failed\n");
		goto failed3;
	}

	FUNC6(icap_class, dev, devt, NULL, "%s%d", DRIVER_NAME, id);
	return 0;		/* success */

 failed3:
	FUNC8(drvdata->base_address);

 failed2:
	FUNC14(regs_res->start, drvdata->mem_size);

 failed1:
	FUNC9(drvdata);

 failed0:
	FUNC12(&icap_sem);
	probed_devices[id] = 0;
	FUNC13(&icap_sem);

	return retval;
}