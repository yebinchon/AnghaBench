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
struct clk {int /*<<< orphan*/  enable_reg; } ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {unsigned long rate; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int EP93XX_I2SCLKDIV_SDIV ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ clk_i2s_mclk ; 
 TYPE_1__ clk_i2s_sclk ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, unsigned long rate)
{
	unsigned val = FUNC0(clk->enable_reg);

	if (rate == clk_i2s_mclk.rate / 2)
		FUNC1(val & ~EP93XX_I2SCLKDIV_SDIV, 
					     clk->enable_reg);
	else if (rate == clk_i2s_mclk.rate / 4)
		FUNC1(val | EP93XX_I2SCLKDIV_SDIV, 
					     clk->enable_reg);
	else
		return -EINVAL;

	clk_i2s_sclk.rate = rate;
	return 0;
}