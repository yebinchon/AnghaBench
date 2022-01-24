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
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct clk_lookup**,char const*,char const*) ; 

int FUNC4(struct clk *clk, const char *con_id,
	const char *dev_id)
{
	struct clk_lookup *cl;

	if (FUNC0(clk))
		return FUNC1(clk);

	return FUNC3(FUNC2(clk), &cl, con_id,
					      dev_id);
}