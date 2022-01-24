#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int base; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  label; int /*<<< orphan*/  of_node; } ;
struct mcs814x_gpio_chip {TYPE_1__ chip; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct resource*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mcs814x_gpio_chip*) ; 
 struct mcs814x_gpio_chip* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcs814x_gpio_direction_input ; 
 int /*<<< orphan*/  mcs814x_gpio_direction_output ; 
 int /*<<< orphan*/  mcs814x_gpio_get ; 
 int /*<<< orphan*/  mcs814x_gpio_set ; 
 unsigned int* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mcs814x_gpio_chip*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct resource *res;
	struct mcs814x_gpio_chip *mcs814x_chip;
	int ret;
	const unsigned int *num_gpios;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	num_gpios = FUNC6(pdev->dev.of_node, "num-gpios", NULL);
	if (!num_gpios)
		FUNC1(&pdev->dev, "FIXME: no num-gpios property\n");

	mcs814x_chip = FUNC5(sizeof(*mcs814x_chip), GFP_KERNEL);
	if (!mcs814x_chip)
		return -ENOMEM;

	mcs814x_chip->regs = FUNC2(&pdev->dev, res);
	if (!mcs814x_chip->regs) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC8(pdev, mcs814x_chip);

#ifdef CONFIG_OF_GPIO
	mcs814x_chip->chip.of_node = pdev->dev.of_node;
#endif

	mcs814x_chip->chip.label = pdev->name;
	mcs814x_chip->chip.get = mcs814x_gpio_get;
	mcs814x_chip->chip.set = mcs814x_gpio_set;
	mcs814x_chip->chip.direction_input = mcs814x_gpio_direction_input;
	mcs814x_chip->chip.direction_output = mcs814x_gpio_direction_output;
	mcs814x_chip->chip.ngpio = FUNC0(num_gpios);
	/* we want dynamic base allocation */
	mcs814x_chip->chip.base = -1;

	ret = FUNC3(&mcs814x_chip->chip);
	if (ret) {
		FUNC1(&pdev->dev, "failed to register gpiochip\n");
		goto out;
	}

	return 0;

out:
	FUNC8(pdev, NULL);
	FUNC4(mcs814x_chip);
	return ret;
}