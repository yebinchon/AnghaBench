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
 scalar_t__ FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

struct clk *FUNC3(struct device *dev, const char *name)
{
	struct clk *clk;

	clk = FUNC1(dev, name);
	if (FUNC0(clk))
		FUNC2("failed to get clock '%s'\n", name);

	return clk;
}