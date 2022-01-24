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
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 struct clk_lookup* FUNC4 (struct clk*,char const*,char*,char const*) ; 

int FUNC5(const char *alias, const char *alias_dev_name,
	const char *con_id, struct device *dev)
{
	struct clk *r = FUNC2(dev, con_id);
	struct clk_lookup *l;

	if (FUNC0(r))
		return FUNC1(r);

	l = FUNC4(r, alias, alias_dev_name ? "%s" : NULL,
			  alias_dev_name);
	FUNC3(r);

	return l ? 0 : -ENODEV;
}