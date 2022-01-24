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
struct clkdiv {scalar_t__ base; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int DIV_CTL1_DIV_FACTOR_MASK ; 
 scalar_t__ REG_DIV_CTL1 ; 
 int FUNC0 (struct clkdiv*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct clkdiv *clkdiv, bool enable)
{
	unsigned int div_factor;

	FUNC1(clkdiv->regmap, clkdiv->base + REG_DIV_CTL1, &div_factor);
	div_factor &= DIV_CTL1_DIV_FACTOR_MASK;

	return FUNC0(clkdiv, enable, div_factor);
}