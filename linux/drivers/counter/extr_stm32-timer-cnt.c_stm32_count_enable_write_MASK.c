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
struct stm32_timer_cnt {int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIM_CR1 ; 
 int TIM_CR1_CEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct counter_device *counter,
					struct counter_count *count,
					void *private,
					const char *buf, size_t len)
{
	struct stm32_timer_cnt *const priv = counter->priv;
	int err;
	u32 cr1;
	bool enable;

	err = FUNC2(buf, &enable);
	if (err)
		return err;

	if (enable) {
		FUNC3(priv->regmap, TIM_CR1, &cr1);
			if (!(cr1 & TIM_CR1_CEN))
				FUNC1(priv->clk);

		FUNC4(priv->regmap, TIM_CR1, TIM_CR1_CEN,
				   TIM_CR1_CEN);
	} else {
		FUNC3(priv->regmap, TIM_CR1, &cr1);
		FUNC4(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
		if (cr1 & TIM_CR1_CEN)
			FUNC0(priv->clk);
	}

	return len;
}