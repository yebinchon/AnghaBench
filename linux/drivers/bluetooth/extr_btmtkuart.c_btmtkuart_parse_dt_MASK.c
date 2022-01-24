#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct serdev_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct btmtkuart_dev {int desired_speed; void* clk; void* reset; void* pins_runtime; void* pinctrl; void* pins_boot; void* boot; void* osc; void* vcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (struct btmtkuart_dev*) ; 
 scalar_t__ FUNC3 (struct btmtkuart_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 void* FUNC5 (TYPE_1__*,char*) ; 
 void* FUNC6 (TYPE_1__*,char*) ; 
 void* FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_1__*) ; 
 void* FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*,int*) ; 
 void* FUNC11 (void*,char*) ; 
 struct btmtkuart_dev* FUNC12 (struct serdev_device*) ; 

__attribute__((used)) static int FUNC13(struct serdev_device *serdev)
{
	struct btmtkuart_dev *bdev = FUNC12(serdev);
	struct device_node *node = serdev->dev.of_node;
	u32 speed = 921600;
	int err;

	if (FUNC3(bdev)) {
		FUNC10(node, "current-speed", &speed);

		bdev->desired_speed = speed;

		bdev->vcc = FUNC9(&serdev->dev, "vcc");
		if (FUNC0(bdev->vcc)) {
			err = FUNC1(bdev->vcc);
			return err;
		}

		bdev->osc = FUNC6(&serdev->dev, "osc");
		if (FUNC0(bdev->osc)) {
			err = FUNC1(bdev->osc);
			return err;
		}

		bdev->boot = FUNC7(&serdev->dev, "boot",
						     GPIOD_OUT_LOW);
		if (FUNC0(bdev->boot)) {
			err = FUNC1(bdev->boot);
			return err;
		}

		bdev->pinctrl = FUNC8(&serdev->dev);
		if (FUNC0(bdev->pinctrl)) {
			err = FUNC1(bdev->pinctrl);
			return err;
		}

		bdev->pins_boot = FUNC11(bdev->pinctrl,
						       "default");
		if (FUNC0(bdev->pins_boot) && !bdev->boot) {
			err = FUNC1(bdev->pins_boot);
			FUNC4(&serdev->dev,
				"Should assign RXD to LOW at boot stage\n");
			return err;
		}

		bdev->pins_runtime = FUNC11(bdev->pinctrl,
							  "runtime");
		if (FUNC0(bdev->pins_runtime)) {
			err = FUNC1(bdev->pins_runtime);
			return err;
		}

		bdev->reset = FUNC7(&serdev->dev, "reset",
						      GPIOD_OUT_LOW);
		if (FUNC0(bdev->reset)) {
			err = FUNC1(bdev->reset);
			return err;
		}
	} else if (FUNC2(bdev)) {
		bdev->clk = FUNC5(&serdev->dev, "ref");
		if (FUNC0(bdev->clk))
			return FUNC1(bdev->clk);
	}

	return 0;
}