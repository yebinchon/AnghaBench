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
struct of_phandle_args {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (struct of_phandle_args*) ; 
 int FUNC4 (struct device*,struct clk*) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct of_phandle_args *clkspec,
				   struct device *dev)
{
	struct clk *clk;
	int error;

	clk = FUNC3(clkspec);
	if (FUNC0(clk))
		return FUNC1(clk);

	error = FUNC5(dev);
	if (error) {
		FUNC2(clk);
		return error;
	}

	error = FUNC4(dev, clk);
	if (error) {
		FUNC6(dev);
		FUNC2(clk);
	}

	return error;
}