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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLINK ; 
 int /*<<< orphan*/  CONFIG_TPS65010 ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GPIO2 ; 
 int /*<<< orphan*/  HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED1 ; 
 int /*<<< orphan*/  LED2 ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  OSK_TPS_GPIO_DSP_PWR_EN ; 
 int /*<<< orphan*/  OSK_TPS_GPIO_LAN_RESET ; 
 int /*<<< orphan*/  OSK_TPS_GPIO_USB_PWR_EN ; 
 int TPS_LDO1_ENABLE ; 
 int TPS_LDO2_ENABLE ; 
 int TPS_VLDO2_3_0V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ osk5912_tps_leds ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, void *context)
{
	if (!FUNC0(CONFIG_TPS65010))
		return -ENOSYS;

	/* Set GPIO 1 HIGH to disable VBUS power supply;
	 * OHCI driver powers it up/down as needed.
	 */
	FUNC2(OSK_TPS_GPIO_USB_PWR_EN, "n_vbus_en");
	FUNC1(OSK_TPS_GPIO_USB_PWR_EN, 1);

	/* Set GPIO 2 high so LED D3 is off by default */
	FUNC5(GPIO2, HIGH);

	/* Set GPIO 3 low to take ethernet out of reset */
	FUNC2(OSK_TPS_GPIO_LAN_RESET, "smc_reset");
	FUNC1(OSK_TPS_GPIO_LAN_RESET, 0);

	/* GPIO4 is VDD_DSP */
	FUNC2(OSK_TPS_GPIO_DSP_PWR_EN, "dsp_power");
	FUNC1(OSK_TPS_GPIO_DSP_PWR_EN, 1);
	/* REVISIT if DSP support isn't configured, power it off ... */

	/* Let LED1 (D9) blink; leds-gpio may override it */
	FUNC6(LED1, BLINK);

	/* Set LED2 off by default */
	FUNC6(LED2, OFF);

	/* Enable LOW_PWR handshake */
	FUNC7(ON);

	/* Switch VLDO2 to 3.0V for AIC23 */
	FUNC4(TPS_LDO2_ENABLE | TPS_VLDO2_3_0V
			| TPS_LDO1_ENABLE);

	/* register these three LEDs */
	osk5912_tps_leds.dev.parent = &client->dev;
	FUNC3(&osk5912_tps_leds);

	return 0;
}