#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int FUNC0 (TYPE_1__*,struct resource*,struct resource*,struct resource*,unsigned int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (struct device_node*,int,struct resource*) ; 
 int FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,...) ; 
 int /*<<< orphan*/  pata_platform_sht ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *ofdev)
{
	int ret;
	struct device_node *dn = ofdev->dev.of_node;
	struct resource io_res;
	struct resource ctl_res;
	struct resource *irq_res;
	unsigned int reg_shift = 0;
	int pio_mode = 0;
	int pio_mask;
	bool use16bit;

	ret = FUNC3(dn, 0, &io_res);
	if (ret) {
		FUNC1(&ofdev->dev, "can't get IO address from "
			"device tree\n");
		return -EINVAL;
	}

	ret = FUNC3(dn, 1, &ctl_res);
	if (ret) {
		FUNC1(&ofdev->dev, "can't get CTL address from "
			"device tree\n");
		return -EINVAL;
	}

	irq_res = FUNC6(ofdev, IORESOURCE_IRQ, 0);

	FUNC5(dn, "reg-shift", &reg_shift);

	if (!FUNC5(dn, "pio-mode", &pio_mode)) {
		if (pio_mode > 6) {
			FUNC1(&ofdev->dev, "invalid pio-mode\n");
			return -EINVAL;
		}
	} else {
		FUNC2(&ofdev->dev, "pio-mode unspecified, assuming PIO0\n");
	}

	use16bit = FUNC4(dn, "ata-generic,use16bit");

	pio_mask = 1 << pio_mode;
	pio_mask |= (1 << pio_mode) - 1;

	return FUNC0(&ofdev->dev, &io_res, &ctl_res, irq_res,
				     reg_shift, pio_mask, &pata_platform_sht,
				     use16bit);
}