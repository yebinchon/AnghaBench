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
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct clk *clk;
	int ret;

	clk = FUNC2(NULL, "extal");
	if (FUNC0(clk))
		return FUNC1(clk);
	ret = FUNC4(clk, 33333000);
	FUNC3(clk);

	return ret;
}