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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,char*) ; 

__attribute__((used)) static struct clk *FUNC3(struct device *dev)
{
	struct clk *clk;

	/* New explicit name */
	clk = FUNC2(dev, "txco");
	if (!FUNC0(clk) || FUNC1(clk) == -EPROBE_DEFER)
		return clk;

	/* Deprecated name */
	clk = FUNC2(dev, "extclk");
	if (!FUNC0(clk) || FUNC1(clk) == -EPROBE_DEFER)
		return clk;

	/* Original code used no name at all */
	return FUNC2(dev, NULL);
}