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
struct sysc {struct device* dev; } ;
struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 struct clk_lookup* FUNC3 (struct clk*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct sysc *ddata,
				      struct device *child,
				      const char *name)
{
	struct clk *clk;
	struct clk_lookup *l;
	int error = 0;

	if (!name)
		return 0;

	clk = FUNC1(child, name);
	if (!FUNC0(clk)) {
		FUNC2(clk);

		return -EEXIST;
	}

	clk = FUNC1(ddata->dev, name);
	if (FUNC0(clk))
		return -ENODEV;

	l = FUNC3(clk, name, FUNC4(child));
	if (!l)
		error = -ENOMEM;

	FUNC2(clk);

	return error;
}