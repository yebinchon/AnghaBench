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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct rb153_cf_info {int gpio_line; unsigned int irq; int /*<<< orphan*/  iobase; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ata_host {struct rb153_cf_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  RB153_CF_MAXPORTS ; 
 int FUNC0 (struct ata_host*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ata_host* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct rb153_cf_info* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned int) ; 
 unsigned int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ata_host*) ; 
 int /*<<< orphan*/  rb153_pata_irq_handler ; 
 int /*<<< orphan*/  FUNC12 (struct ata_host*) ; 
 int /*<<< orphan*/  rb153_pata_sht ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	unsigned int irq;
	int gpio;
	struct resource *res;
	struct ata_host *ah;
	struct rb153_cf_info *info;
	int ret;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev, "no IOMEM resource found\n");
		return -EINVAL;
	}

	irq = FUNC9(pdev, 0);
	if (irq <= 0) {
		FUNC2(&pdev->dev, "no IRQ resource found\n");
		return -ENOENT;
	}

	gpio = FUNC8(irq);
	if (gpio < 0) {
		FUNC2(&pdev->dev, "no GPIO found for irq%d\n", irq);
		return -ENOENT;
	}

	ret = FUNC7(gpio, DRV_NAME);
	if (ret) {
		FUNC2(&pdev->dev, "GPIO request failed\n");
		return ret;
	}

	ah = FUNC1(&pdev->dev, RB153_CF_MAXPORTS);
	if (!ah)
		return -ENOMEM;

	FUNC11(pdev, ah);

	info = FUNC4(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	ah->private_data = info;
	info->gpio_line = gpio;
	info->irq = irq;

	info->iobase = FUNC3(&pdev->dev, res->start,
				res->end - res->start + 1);
	if (!info->iobase)
		return -ENOMEM;

	ret = FUNC5(gpio);
	if (ret) {
		FUNC2(&pdev->dev, "unable to set GPIO direction, err=%d\n",
				ret);
		goto err_free_gpio;
	}

	FUNC12(ah);

	ret = FUNC0(ah, irq, rb153_pata_irq_handler,
				IRQF_TRIGGER_LOW, &rb153_pata_sht);
	if (ret)
		goto err_free_gpio;

	return 0;

err_free_gpio:
	FUNC6(gpio);

	return ret;
}