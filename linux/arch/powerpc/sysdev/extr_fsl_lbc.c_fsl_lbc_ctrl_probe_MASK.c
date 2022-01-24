#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_9__ dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  lteir; } ;
struct TYPE_12__ {int* irq; TYPE_2__* regs; TYPE_9__* dev; int /*<<< orphan*/  irq_wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  LTEIR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 TYPE_1__* fsl_lbc_ctrl_dev ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_lbc_ctrl_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *dev)
{
	int ret;

	if (!dev->dev.of_node) {
		FUNC0(&dev->dev, "Device OF-Node is NULL");
		return -EFAULT;
	}

	fsl_lbc_ctrl_dev = FUNC8(sizeof(*fsl_lbc_ctrl_dev), GFP_KERNEL);
	if (!fsl_lbc_ctrl_dev)
		return -ENOMEM;

	FUNC1(&dev->dev, fsl_lbc_ctrl_dev);

	FUNC12(&fsl_lbc_ctrl_dev->lock);
	FUNC4(&fsl_lbc_ctrl_dev->irq_wait);

	fsl_lbc_ctrl_dev->regs = FUNC9(dev->dev.of_node, 0);
	if (!fsl_lbc_ctrl_dev->regs) {
		FUNC0(&dev->dev, "failed to get memory region\n");
		ret = -ENODEV;
		goto err;
	}

	fsl_lbc_ctrl_dev->irq[0] = FUNC6(dev->dev.of_node, 0);
	if (!fsl_lbc_ctrl_dev->irq[0]) {
		FUNC0(&dev->dev, "failed to get irq resource\n");
		ret = -ENODEV;
		goto err;
	}

	fsl_lbc_ctrl_dev->dev = &dev->dev;

	ret = FUNC3(fsl_lbc_ctrl_dev, dev->dev.of_node);
	if (ret < 0)
		goto err;

	ret = FUNC11(fsl_lbc_ctrl_dev->irq[0], fsl_lbc_ctrl_irq, 0,
				"fsl-lbc", fsl_lbc_ctrl_dev);
	if (ret != 0) {
		FUNC0(&dev->dev, "failed to install irq (%d)\n",
			fsl_lbc_ctrl_dev->irq[0]);
		ret = fsl_lbc_ctrl_dev->irq[0];
		goto err;
	}

	fsl_lbc_ctrl_dev->irq[1] = FUNC6(dev->dev.of_node, 1);
	if (fsl_lbc_ctrl_dev->irq[1]) {
		ret = FUNC11(fsl_lbc_ctrl_dev->irq[1], fsl_lbc_ctrl_irq,
				IRQF_SHARED, "fsl-lbc-err", fsl_lbc_ctrl_dev);
		if (ret) {
			FUNC0(&dev->dev, "failed to install irq (%d)\n",
					fsl_lbc_ctrl_dev->irq[1]);
			ret = fsl_lbc_ctrl_dev->irq[1];
			goto err1;
		}
	}

	/* Enable interrupts for any detected events */
	FUNC10(&fsl_lbc_ctrl_dev->regs->lteir, LTEIR_ENABLE);

	return 0;

err1:
	FUNC2(fsl_lbc_ctrl_dev->irq[0], fsl_lbc_ctrl_dev);
err:
	FUNC5(fsl_lbc_ctrl_dev->regs);
	FUNC7(fsl_lbc_ctrl_dev);
	fsl_lbc_ctrl_dev = NULL;
	return ret;
}