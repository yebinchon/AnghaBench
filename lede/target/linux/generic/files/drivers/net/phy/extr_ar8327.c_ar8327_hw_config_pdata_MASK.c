#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ar8xxx_priv {int chip_rev; int /*<<< orphan*/  get_port_link; struct ar8327_data* chip_data; } ;
struct ar8327_platform_data {int num_leds; int /*<<< orphan*/ * leds; TYPE_1__* sgmii_cfg; struct ar8327_led_cfg* led_cfg; TYPE_2__* pad6_cfg; TYPE_2__* pad5_cfg; TYPE_2__* pad0_cfg; int /*<<< orphan*/  port6_cfg; int /*<<< orphan*/  port0_cfg; int /*<<< orphan*/  get_port_link; } ;
struct ar8327_led_cfg {int led_ctrl0; int led_ctrl1; int led_ctrl2; int led_ctrl3; scalar_t__ open_drain; } ;
struct ar8327_data {int /*<<< orphan*/  leds; void* port6_status; void* port0_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac06_exchange_dis; } ;
struct TYPE_3__ {int sgmii_ctrl; scalar_t__ serdes_aen; } ;

/* Variables and functions */
 int AR8327_POWER_ON_STRIP_LED_OPEN_EN ; 
 int AR8327_POWER_ON_STRIP_POWER_ON_SEL ; 
 int AR8327_POWER_ON_STRIP_SERDES_AEN ; 
 int /*<<< orphan*/  AR8327_REG_LED_CTRL0 ; 
 int /*<<< orphan*/  AR8327_REG_LED_CTRL1 ; 
 int /*<<< orphan*/  AR8327_REG_LED_CTRL2 ; 
 int /*<<< orphan*/  AR8327_REG_LED_CTRL3 ; 
 int /*<<< orphan*/  AR8327_REG_PAD0_MODE ; 
 int /*<<< orphan*/  AR8327_REG_PAD5_MODE ; 
 int /*<<< orphan*/  AR8327_REG_PAD6_MODE ; 
 int /*<<< orphan*/  AR8327_REG_POWER_ON_STRIP ; 
 int /*<<< orphan*/  AR8327_REG_SGMII_CTRL ; 
 int AR8327_SGMII_CTRL_EN_PLL ; 
 int AR8327_SGMII_CTRL_EN_RX ; 
 int AR8327_SGMII_CTRL_EN_TX ; 
 int AR8337_PAD_MAC06_EXCHANGE_EN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ar8xxx_priv *priv,
		       struct ar8327_platform_data *pdata)
{
	struct ar8327_led_cfg *led_cfg;
	struct ar8327_data *data = priv->chip_data;
	u32 pos, new_pos;
	u32 t;

	if (!pdata)
		return -EINVAL;

	priv->get_port_link = pdata->get_port_link;

	data->port0_status = FUNC1(&pdata->port0_cfg);
	data->port6_status = FUNC1(&pdata->port6_cfg);

	t = FUNC0(pdata->pad0_cfg);
	if (FUNC5(priv) && !pdata->pad0_cfg->mac06_exchange_dis)
	    t |= AR8337_PAD_MAC06_EXCHANGE_EN;
	FUNC4(priv, AR8327_REG_PAD0_MODE, t);

	t = FUNC0(pdata->pad5_cfg);
	FUNC4(priv, AR8327_REG_PAD5_MODE, t);
	t = FUNC0(pdata->pad6_cfg);
	FUNC4(priv, AR8327_REG_PAD6_MODE, t);

	pos = FUNC3(priv, AR8327_REG_POWER_ON_STRIP);
	new_pos = pos;

	led_cfg = pdata->led_cfg;
	if (led_cfg) {
		if (led_cfg->open_drain)
			new_pos |= AR8327_POWER_ON_STRIP_LED_OPEN_EN;
		else
			new_pos &= ~AR8327_POWER_ON_STRIP_LED_OPEN_EN;

		FUNC4(priv, AR8327_REG_LED_CTRL0, led_cfg->led_ctrl0);
		FUNC4(priv, AR8327_REG_LED_CTRL1, led_cfg->led_ctrl1);
		FUNC4(priv, AR8327_REG_LED_CTRL2, led_cfg->led_ctrl2);
		FUNC4(priv, AR8327_REG_LED_CTRL3, led_cfg->led_ctrl3);

		if (new_pos != pos)
			new_pos |= AR8327_POWER_ON_STRIP_POWER_ON_SEL;
	}

	if (pdata->sgmii_cfg) {
		t = pdata->sgmii_cfg->sgmii_ctrl;
		if (priv->chip_rev == 1)
			t |= AR8327_SGMII_CTRL_EN_PLL |
			     AR8327_SGMII_CTRL_EN_RX |
			     AR8327_SGMII_CTRL_EN_TX;
		else
			t &= ~(AR8327_SGMII_CTRL_EN_PLL |
			       AR8327_SGMII_CTRL_EN_RX |
			       AR8327_SGMII_CTRL_EN_TX);

		FUNC4(priv, AR8327_REG_SGMII_CTRL, t);

		if (pdata->sgmii_cfg->serdes_aen)
			new_pos &= ~AR8327_POWER_ON_STRIP_SERDES_AEN;
		else
			new_pos |= AR8327_POWER_ON_STRIP_SERDES_AEN;
	}

	FUNC4(priv, AR8327_REG_POWER_ON_STRIP, new_pos);

	if (pdata->leds && pdata->num_leds) {
		int i;

		data->leds = FUNC6(pdata->num_leds * sizeof(void *),
				     GFP_KERNEL);
		if (!data->leds)
			return -ENOMEM;

		for (i = 0; i < pdata->num_leds; i++)
			FUNC2(priv, &pdata->leds[i]);
	}

	return 0;
}