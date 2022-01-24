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
typedef  int u32 ;
struct stm32_timer_cnt {int /*<<< orphan*/  regmap; int /*<<< orphan*/  ceiling; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;

/* Variables and functions */
#define  STM32_COUNT_ENCODER_MODE_1 130 
#define  STM32_COUNT_ENCODER_MODE_2 129 
#define  STM32_COUNT_ENCODER_MODE_3 128 
 int /*<<< orphan*/  TIM_ARR ; 
 int /*<<< orphan*/  TIM_CR1 ; 
 int TIM_CR1_ARPE ; 
 int TIM_CR1_CEN ; 
 int /*<<< orphan*/  TIM_EGR ; 
 int TIM_EGR_UG ; 
 int /*<<< orphan*/  TIM_SMCR ; 
 int TIM_SMCR_SMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct counter_device *counter,
				    struct counter_count *count,
				    size_t function)
{
	struct stm32_timer_cnt *const priv = counter->priv;
	u32 cr1, sms;

	switch (function) {
	case STM32_COUNT_ENCODER_MODE_1:
		sms = 1;
		break;
	case STM32_COUNT_ENCODER_MODE_2:
		sms = 2;
		break;
	case STM32_COUNT_ENCODER_MODE_3:
		sms = 3;
		break;
	default:
		sms = 0;
		break;
	}

	/* Store enable status */
	FUNC0(priv->regmap, TIM_CR1, &cr1);

	FUNC1(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);

	/* TIMx_ARR register shouldn't be buffered (ARPE=0) */
	FUNC1(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
	FUNC2(priv->regmap, TIM_ARR, priv->ceiling);

	FUNC1(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, sms);

	/* Make sure that registers are updated */
	FUNC1(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);

	/* Restore the enable status */
	FUNC1(priv->regmap, TIM_CR1, TIM_CR1_CEN, cr1);

	return 0;
}