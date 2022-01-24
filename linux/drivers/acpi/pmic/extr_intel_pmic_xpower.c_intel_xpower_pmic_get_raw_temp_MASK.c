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
typedef  int u8 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP288_ADC_TS_CURRENT_ON ; 
 int AXP288_ADC_TS_CURRENT_ON_OFF_MASK ; 
 int /*<<< orphan*/  AXP288_ADC_TS_CURRENT_ON_ONDEMAND ; 
 int /*<<< orphan*/  AXP288_ADC_TS_PIN_CTRL ; 
 int /*<<< orphan*/  AXP288_GP_ADC_H ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct regmap *regmap, int reg)
{
	int ret, adc_ts_pin_ctrl;
	u8 buf[2];

	/*
	 * The current-source used for the battery temp-sensor (TS) is shared
	 * with the GPADC. For proper fuel-gauge and charger operation the TS
	 * current-source needs to be permanently on. But to read the GPADC we
	 * need to temporary switch the TS current-source to ondemand, so that
	 * the GPADC can use it, otherwise we will always read an all 0 value.
	 *
	 * Note that the switching from on to on-ondemand is not necessary
	 * when the TS current-source is off (this happens on devices which
	 * do not use the TS-pin).
	 */
	ret = FUNC1(regmap, AXP288_ADC_TS_PIN_CTRL, &adc_ts_pin_ctrl);
	if (ret)
		return ret;

	if (adc_ts_pin_ctrl & AXP288_ADC_TS_CURRENT_ON_OFF_MASK) {
		ret = FUNC2(regmap, AXP288_ADC_TS_PIN_CTRL,
					 AXP288_ADC_TS_CURRENT_ON_OFF_MASK,
					 AXP288_ADC_TS_CURRENT_ON_ONDEMAND);
		if (ret)
			return ret;

		/* Wait a bit after switching the current-source */
		FUNC3(6000, 10000);
	}

	ret = FUNC0(regmap, AXP288_GP_ADC_H, buf, 2);
	if (ret == 0)
		ret = (buf[0] << 4) + ((buf[1] >> 4) & 0x0f);

	if (adc_ts_pin_ctrl & AXP288_ADC_TS_CURRENT_ON_OFF_MASK) {
		FUNC2(regmap, AXP288_ADC_TS_PIN_CTRL,
				   AXP288_ADC_TS_CURRENT_ON_OFF_MASK,
				   AXP288_ADC_TS_CURRENT_ON);
	}

	return ret;
}