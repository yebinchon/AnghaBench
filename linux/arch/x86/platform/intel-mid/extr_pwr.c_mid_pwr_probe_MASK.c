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
struct pci_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
struct mid_pwr_device_info {int (* set_initial_state ) (struct mid_pwr*) ;} ;
struct mid_pwr {int available; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; int /*<<< orphan*/  regs; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct mid_pwr* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mid_pwr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mid_pwr*) ; 
 int /*<<< orphan*/  mid_pwr_irq_handler ; 
 struct mid_pwr* midpwr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct mid_pwr*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct mid_pwr*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct mid_pwr_device_info *info = (void *)id->driver_data;
	struct device *dev = &pdev->dev;
	struct mid_pwr *pwr;
	int ret;

	ret = FUNC8(pdev);
	if (ret < 0) {
		FUNC0(&pdev->dev, "error: could not enable device\n");
		return ret;
	}

	ret = FUNC9(pdev, 1 << 0, FUNC6(pdev));
	if (ret) {
		FUNC0(&pdev->dev, "I/O memory remapping failed\n");
		return ret;
	}

	pwr = FUNC2(dev, sizeof(*pwr), GFP_KERNEL);
	if (!pwr)
		return -ENOMEM;

	pwr->dev = dev;
	pwr->regs = FUNC10(pdev)[0];
	pwr->irq = pdev->irq;

	FUNC5(&pwr->lock);

	/* Disable interrupts */
	FUNC4(pwr);

	if (info && info->set_initial_state) {
		ret = info->set_initial_state(pwr);
		if (ret)
			FUNC1(dev, "Can't set initial state: %d\n", ret);
	}

	ret = FUNC3(dev, pdev->irq, mid_pwr_irq_handler,
			       IRQF_NO_SUSPEND, FUNC6(pdev), pwr);
	if (ret)
		return ret;

	pwr->available = true;
	midpwr = pwr;

	FUNC7(pdev, pwr);
	return 0;
}