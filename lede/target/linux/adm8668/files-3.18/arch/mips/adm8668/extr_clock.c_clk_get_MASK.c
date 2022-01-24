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
 int /*<<< orphan*/  ENOENT ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 struct clk sys_clk ; 
 struct clk uart_clk ; 

struct clk *FUNC3(struct device *dev, const char *id)
{
	const char *lookup = id;

	if (dev)
		lookup = FUNC1(dev);

	if (!FUNC2(lookup, "apb:uart0"))
		return &uart_clk;
	if (!FUNC2(lookup, "sys"))
		return &sys_clk;

	return FUNC0(-ENOENT);
}