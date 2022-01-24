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
struct clk_lookup {struct clk_hw* clk_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clk_hw* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_lookup* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct clk_hw *FUNC4(const char *dev_id, const char *con_id)
{
	struct clk_lookup *cl;
	struct clk_hw *hw = FUNC0(-ENOENT);

	FUNC2(&clocks_mutex);
	cl = FUNC1(dev_id, con_id);
	if (cl)
		hw = cl->clk_hw;
	FUNC3(&clocks_mutex);

	return hw;
}