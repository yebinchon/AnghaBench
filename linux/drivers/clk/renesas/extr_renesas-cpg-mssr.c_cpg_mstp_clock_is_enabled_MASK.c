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
struct mstp_clock {int index; struct cpg_mssr_priv* priv; } ;
struct cpg_mssr_priv {scalar_t__ base; scalar_t__ stbyctrl; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 struct mstp_clock* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct mstp_clock *clock = FUNC5(hw);
	struct cpg_mssr_priv *priv = clock->priv;
	u32 value;

	if (priv->stbyctrl)
		value = FUNC3(priv->base + FUNC2(clock->index / 32));
	else
		value = FUNC4(priv->base + FUNC1(clock->index / 32));

	return !(value & FUNC0(clock->index % 32));
}