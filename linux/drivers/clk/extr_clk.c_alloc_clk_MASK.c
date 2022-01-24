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
struct clk_core {int dummy; } ;
struct clk {char const* dev_id; int /*<<< orphan*/  max_rate; int /*<<< orphan*/  con_id; struct clk_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct clk* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk *FUNC3(struct clk_core *core, const char *dev_id,
			     const char *con_id)
{
	struct clk *clk;

	clk = FUNC2(sizeof(*clk), GFP_KERNEL);
	if (!clk)
		return FUNC0(-ENOMEM);

	clk->core = core;
	clk->dev_id = dev_id;
	clk->con_id = FUNC1(con_id, GFP_KERNEL);
	clk->max_rate = ULONG_MAX;

	return clk;
}