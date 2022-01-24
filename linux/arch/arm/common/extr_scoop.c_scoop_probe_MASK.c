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
struct TYPE_5__ {int base; int ngpio; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get; int /*<<< orphan*/  set; int /*<<< orphan*/  label; } ;
struct scoop_dev {scalar_t__ base; TYPE_2__ gpio; int /*<<< orphan*/  suspend_set; int /*<<< orphan*/  suspend_clr; int /*<<< orphan*/  scoop_lock; } ;
struct scoop_config {int io_dir; int io_out; int gpio_base; int /*<<< orphan*/  suspend_set; int /*<<< orphan*/  suspend_clr; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_4__ {struct scoop_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ SCOOP_CPR ; 
 scalar_t__ SCOOP_GPCR ; 
 scalar_t__ SCOOP_GPWR ; 
 scalar_t__ SCOOP_MCR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_2__*,struct scoop_dev*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct scoop_dev*) ; 
 struct scoop_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct scoop_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  scoop_gpio_direction_input ; 
 int /*<<< orphan*/  scoop_gpio_direction_output ; 
 int /*<<< orphan*/  scoop_gpio_get ; 
 int /*<<< orphan*/  scoop_gpio_set ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct scoop_dev *devptr;
	struct scoop_config *inf;
	struct resource *mem = FUNC7(pdev, IORESOURCE_MEM, 0);
	int ret;

	if (!mem)
		return -EINVAL;

	devptr = FUNC6(sizeof(struct scoop_dev), GFP_KERNEL);
	if (!devptr)
		return -ENOMEM;

	FUNC12(&devptr->scoop_lock);

	inf = pdev->dev.platform_data;
	devptr->base = FUNC2(mem->start, FUNC11(mem));

	if (!devptr->base) {
		ret = -ENOMEM;
		goto err_ioremap;
	}

	FUNC8(pdev, devptr);

	FUNC9("Sharp Scoop Device found at 0x%08x -> 0x%8p\n",(unsigned int)mem->start, devptr->base);

	FUNC4(0x0140, devptr->base + SCOOP_MCR);
	FUNC10(&pdev->dev);
	FUNC4(0x0000, devptr->base + SCOOP_CPR);
	FUNC4(inf->io_dir & 0xffff, devptr->base + SCOOP_GPCR);
	FUNC4(inf->io_out & 0xffff, devptr->base + SCOOP_GPWR);

	devptr->suspend_clr = inf->suspend_clr;
	devptr->suspend_set = inf->suspend_set;

	devptr->gpio.base = -1;

	if (inf->gpio_base != 0) {
		devptr->gpio.label = FUNC0(&pdev->dev);
		devptr->gpio.base = inf->gpio_base;
		devptr->gpio.ngpio = 12; /* PA11 = 0, PA12 = 1, etc. up to PA22 = 11 */
		devptr->gpio.set = scoop_gpio_set;
		devptr->gpio.get = scoop_gpio_get;
		devptr->gpio.direction_input = scoop_gpio_direction_input;
		devptr->gpio.direction_output = scoop_gpio_direction_output;

		ret = FUNC1(&devptr->gpio, devptr);
		if (ret)
			goto err_gpio;
	}

	return 0;

err_gpio:
	FUNC8(pdev, NULL);
err_ioremap:
	FUNC3(devptr->base);
	FUNC5(devptr);

	return ret;
}