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
 int FUNC0 (struct cs2000_priv*,int) ; 
 int FUNC1 (struct cs2000_priv*,int) ; 
 int FUNC2 (struct cs2000_priv*) ; 
 struct cs2000_priv* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct cs2000_priv *priv = FUNC3(hw);
	int ret;

	ret = FUNC1(priv, true);
	if (ret < 0)
		return ret;

	ret = FUNC0(priv, true);
	if (ret < 0)
		return ret;

	ret = FUNC2(priv);
	if (ret < 0)
		return ret;

	return ret;
}