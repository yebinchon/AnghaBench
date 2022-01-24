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
struct device {int dummy; } ;
struct cs2000_priv {struct clk* ref_clk; struct clk* clk_in; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct cs2000_priv*) ; 

__attribute__((used)) static int FUNC3(struct cs2000_priv *priv)
{
	struct device *dev = FUNC2(priv);
	struct clk *clk_in, *ref_clk;

	clk_in = FUNC1(dev, "clk_in");
	/* not yet provided */
	if (FUNC0(clk_in))
		return -EPROBE_DEFER;

	ref_clk = FUNC1(dev, "ref_clk");
	/* not yet provided */
	if (FUNC0(ref_clk))
		return -EPROBE_DEFER;

	priv->clk_in	= clk_in;
	priv->ref_clk	= ref_clk;

	return 0;
}