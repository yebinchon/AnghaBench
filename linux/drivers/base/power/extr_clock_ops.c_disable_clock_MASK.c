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
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, const char *con_id)
{
	struct clk *clk;

	clk = FUNC2(dev, con_id);
	if (!FUNC0(clk)) {
		FUNC1(clk);
		FUNC3(clk);
		FUNC4(dev, "Runtime PM disabled, clock forced off.\n");
	}
}