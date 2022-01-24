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
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int CP1_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OF_GPIO_ACTIVE_LOW ; 
 void* cp1_base ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
#define CP1_SIZE       (1 << 20)
	int gpio_count;
	dma_addr_t dma;

	cp1_base =
		(void *) FUNC0(FUNC2(&pdev->dev, CP1_SIZE,
						    &dma, GFP_KERNEL));

	gpio_count = FUNC6(pdev->dev.of_node);
	while (gpio_count > 0) {
		enum of_gpio_flags flags;
		int gpio = FUNC5(pdev->dev.of_node,
					     --gpio_count, &flags);
		if (FUNC4(gpio, "vmmc-relay"))
			continue;
		FUNC1(&pdev->dev, "requested GPIO %d\n", gpio);
		FUNC3(gpio,
				      (flags & OF_GPIO_ACTIVE_LOW) ? (0) : (1));
	}

	FUNC1(&pdev->dev, "reserved %dMB at 0x%p", CP1_SIZE >> 20, cp1_base);

	return 0;
}