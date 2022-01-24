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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_lptim_cnt {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STM32_LPTIM_CR ; 
 int /*<<< orphan*/  STM32_LPTIM_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct stm32_lptim_cnt *priv)
{
	u32 val;
	int ret;

	ret = FUNC1(priv->regmap, STM32_LPTIM_CR, &val);
	if (ret)
		return ret;

	return FUNC0(STM32_LPTIM_ENABLE, val);
}