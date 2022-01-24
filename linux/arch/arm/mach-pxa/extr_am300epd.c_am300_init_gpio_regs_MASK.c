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
struct broadsheetfb_par {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int CFG_GPIO_PIN ; 
 int CS_GPIO_PIN ; 
 int DB0_GPIO_PIN ; 
 int DB15_GPIO_PIN ; 
 int DC_GPIO_PIN ; 
 int /*<<< orphan*/  IRQ_GPIO_PIN ; 
 int PWR_GPIO_PIN ; 
 int /*<<< orphan*/  RDY_GPIO_PIN ; 
 int RD_GPIO_PIN ; 
 int RST_GPIO_PIN ; 
 int WR_GPIO_PIN ; 
 TYPE_1__* am300_device ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int* gpio_names ; 
 int FUNC6 (int,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int* gpios ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int FUNC10(struct broadsheetfb_par *par)
{
	int i;
	int err;
	char dbname[8];

	for (i = 0; i < FUNC0(gpios); i++) {
		err = FUNC6(gpios[i], gpio_names[i]);
		if (err) {
			FUNC2(&am300_device->dev, "failed requesting "
				"gpio %s, err=%d\n", gpio_names[i], err);
			goto err_req_gpio;
		}
	}

	/* we also need to take care of the hdb bus */
	for (i = DB0_GPIO_PIN; i <= DB15_GPIO_PIN; i++) {
		FUNC9(dbname, "DB%d", i);
		err = FUNC6(i, dbname);
		if (err) {
			FUNC2(&am300_device->dev, "failed requesting "
				"gpio %d, err=%d\n", i, err);
			goto err_req_gpio2;
		}
	}

	/* setup the outputs and init values */
	FUNC4(PWR_GPIO_PIN, 0);
	FUNC4(CFG_GPIO_PIN, 1);
	FUNC4(DC_GPIO_PIN, 0);
	FUNC4(RD_GPIO_PIN, 1);
	FUNC4(WR_GPIO_PIN, 1);
	FUNC4(CS_GPIO_PIN, 1);
	FUNC4(RST_GPIO_PIN, 0);

	/* setup the inputs */
	FUNC3(RDY_GPIO_PIN);
	FUNC3(IRQ_GPIO_PIN);

	/* start the hdb bus as an input */
	for (i = DB0_GPIO_PIN; i <= DB15_GPIO_PIN; i++)
		FUNC4(i, 0);

	/* go into command mode */
	FUNC7(CFG_GPIO_PIN, 1);
	FUNC7(RST_GPIO_PIN, 0);
	FUNC8(10);
	FUNC7(RST_GPIO_PIN, 1);
	FUNC8(10);
	FUNC1(par);

	return 0;

err_req_gpio2:
	while (--i >= DB0_GPIO_PIN)
		FUNC5(i);
	i = FUNC0(gpios);
err_req_gpio:
	while (--i >= 0)
		FUNC5(gpios[i]);

	return err;
}