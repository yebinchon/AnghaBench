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
struct resource {int /*<<< orphan*/  start; } ;
struct rb532_cf_info {int irq; int /*<<< orphan*/  iobase; struct gpio_desc* gpio_line; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;
struct ata_host {struct rb532_cf_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  RB500_CF_MAXPORTS ; 
 int FUNC2 (struct ata_host*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ata_host* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct gpio_desc* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rb532_cf_info* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_desc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rb532_pata_irq_handler ; 
 int /*<<< orphan*/  FUNC11 (struct ata_host*) ; 
 int /*<<< orphan*/  rb532_pata_sht ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int irq;
	struct gpio_desc *gpiod;
	struct resource *res;
	struct ata_host *ah;
	struct rb532_cf_info *info;
	int ret;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC4(&pdev->dev, "no IOMEM resource found\n");
		return -EINVAL;
	}

	irq = FUNC9(pdev, 0);
	if (irq <= 0) {
		FUNC4(&pdev->dev, "no IRQ resource found\n");
		return -ENOENT;
	}

	gpiod = FUNC5(&pdev->dev, NULL, GPIOD_IN);
	if (FUNC0(gpiod)) {
		FUNC4(&pdev->dev, "no GPIO found for irq%d\n", irq);
		return FUNC1(gpiod);
	}
	FUNC8(gpiod, DRV_NAME);

	/* allocate host */
	ah = FUNC3(&pdev->dev, RB500_CF_MAXPORTS);
	if (!ah)
		return -ENOMEM;

	info = FUNC7(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	ah->private_data = info;
	info->gpio_line = gpiod;
	info->irq = irq;

	info->iobase = FUNC6(&pdev->dev, res->start,
				FUNC12(res));
	if (!info->iobase)
		return -ENOMEM;

	FUNC11(ah);

	ret = FUNC2(ah, irq, rb532_pata_irq_handler,
				IRQF_TRIGGER_LOW, &rb532_pata_sht);
	if (ret)
		return ret;

	return 0;
}