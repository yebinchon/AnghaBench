#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct metronomefb_par {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_GPIO_PIN ; 
 int /*<<< orphan*/  LED_GPIO_PIN ; 
 int /*<<< orphan*/  PCBPWR_GPIO_PIN ; 
 int /*<<< orphan*/  RDY_GPIO_PIN ; 
 int /*<<< orphan*/  RST_GPIO_PIN ; 
 int /*<<< orphan*/  STDBY_GPIO_PIN ; 
 TYPE_1__* am200_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gpio_names ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gpios ; 

__attribute__((used)) static int FUNC6(struct metronomefb_par *par)
{
	int i;
	int err;

	for (i = 0; i < FUNC0(gpios); i++) {
		err = FUNC5(gpios[i], gpio_names[i]);
		if (err) {
			FUNC1(&am200_device->dev, "failed requesting "
				"gpio %s, err=%d\n", gpio_names[i], err);
			goto err_req_gpio;
		}
	}

	FUNC3(LED_GPIO_PIN, 0);
	FUNC3(STDBY_GPIO_PIN, 0);
	FUNC3(RST_GPIO_PIN, 0);

	FUNC2(RDY_GPIO_PIN);
	FUNC2(ERR_GPIO_PIN);

	FUNC3(PCBPWR_GPIO_PIN, 0);

	return 0;

err_req_gpio:
	while (--i >= 0)
		FUNC4(gpios[i]);

	return err;
}