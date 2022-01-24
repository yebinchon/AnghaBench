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
struct clkdiv {unsigned int cxo_period_ns; scalar_t__ base; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ REG_EN_CTL ; 
 int /*<<< orphan*/  REG_EN_MASK ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct clkdiv *clkdiv, bool enable,
				    unsigned int div_factor)
{
	int ret;
	unsigned int ns = clkdiv->cxo_period_ns;
	unsigned int div = FUNC0(div_factor);

	ret = FUNC2(clkdiv->regmap, clkdiv->base + REG_EN_CTL,
				 REG_EN_MASK, enable ? REG_EN_MASK : 0);
	if (ret)
		return ret;

	if (enable)
		FUNC1((2 + 3 * div) * ns);
	else
		FUNC1(3 * div * ns);

	return 0;
}