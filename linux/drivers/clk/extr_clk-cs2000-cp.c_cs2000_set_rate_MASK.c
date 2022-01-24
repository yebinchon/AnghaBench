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
struct cs2000_priv {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cs2000_priv*,int,unsigned long,unsigned long) ; 
 struct cs2000_priv* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw,
			   unsigned long rate, unsigned long parent_rate)
{
	struct cs2000_priv *priv = FUNC1(hw);
	int ch = 0; /* it uses ch0 only at this point */

	return FUNC0(priv, ch, rate, parent_rate);
}