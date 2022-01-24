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
struct gsw_mt753x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKGEN_CTRL ; 
 int CLK_SKEW_IN_M ; 
 int CLK_SKEW_IN_NO_CHANGE ; 
 int CLK_SKEW_IN_S ; 
 int CLK_SKEW_OUT_M ; 
 int CLK_SKEW_OUT_NO_CHANGE ; 
 int CLK_SKEW_OUT_S ; 
 int EINVAL ; 
 int GP_CLK_EN ; 
 int GP_MODE_M ; 
 int GP_MODE_RGMII ; 
 int GP_MODE_S ; 
 int RXCLK_NO_DELAY ; 
 int TXCLK_NO_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct gsw_mt753x *gsw, u32 port)
{
	u32 val;

	if (port != 5) {
		FUNC0(gsw->dev, "RGMII mode is not available for port %d\n",
			 port);
		return -EINVAL;
	}

	val = FUNC1(gsw, CLKGEN_CTRL);
	val |= GP_CLK_EN;
	val &= ~GP_MODE_M;
	val |= GP_MODE_RGMII << GP_MODE_S;
	val |= TXCLK_NO_REVERSE;
	val |= RXCLK_NO_DELAY;
	val &= ~CLK_SKEW_IN_M;
	val |= CLK_SKEW_IN_NO_CHANGE << CLK_SKEW_IN_S;
	val &= ~CLK_SKEW_OUT_M;
	val |= CLK_SKEW_OUT_NO_CHANGE << CLK_SKEW_OUT_S;
	FUNC2(gsw, CLKGEN_CTRL, val);

	return 0;
}