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
struct TYPE_4__ {unsigned long rate; } ;
struct TYPE_3__ {int rate; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int EP93XX_I2SCLKDIV_LRDIV128 ; 
 unsigned int EP93XX_I2SCLKDIV_LRDIV32 ; 
 unsigned int EP93XX_I2SCLKDIV_LRDIV64 ; 
 unsigned int EP93XX_I2SCLKDIV_LRDIV_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ clk_i2s_lrclk ; 
 TYPE_1__ clk_i2s_sclk ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, unsigned long rate)
{
	unsigned val = FUNC0(clk->enable_reg) & 
		~EP93XX_I2SCLKDIV_LRDIV_MASK;
	
	if (rate == clk_i2s_sclk.rate / 32)
		FUNC1(val | EP93XX_I2SCLKDIV_LRDIV32,
					     clk->enable_reg);
	else if (rate == clk_i2s_sclk.rate / 64)
		FUNC1(val | EP93XX_I2SCLKDIV_LRDIV64,
					     clk->enable_reg);
	else if (rate == clk_i2s_sclk.rate / 128)
		FUNC1(val | EP93XX_I2SCLKDIV_LRDIV128,
					     clk->enable_reg);
	else
		return -EINVAL;

	clk_i2s_lrclk.rate = rate;
	return 0;
}