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
typedef  int u32 ;
struct s3c24xx_clkout {int shift; int mask; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C24XX_MISCCR ; 
 int FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct s3c24xx_clkout* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct s3c24xx_clkout *clkout = FUNC2(hw);
	int num_parents = FUNC0(hw);
	u32 val;

	val = FUNC1(S3C24XX_MISCCR) >> clkout->shift;
	val >>= clkout->shift;
	val &= clkout->mask;

	if (val >= num_parents)
		return -EINVAL;

	return val;
}