#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct TYPE_3__ {int size; struct cmd_clk_get_parent_response* data; } ;
struct tegra_bpmp_clk_message {TYPE_1__ rx; int /*<<< orphan*/  id; int /*<<< orphan*/  cmd; } ;
struct tegra_bpmp_clk {unsigned int num_parents; scalar_t__* parents; TYPE_2__* bpmp; int /*<<< orphan*/  id; } ;
struct cmd_clk_get_parent_response {scalar_t__ parent_id; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLK_GET_PARENT ; 
 unsigned int U8_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_bpmp_clk_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_2__*,struct tegra_bpmp_clk_message*) ; 
 struct tegra_bpmp_clk* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC5(struct clk_hw *hw)
{
	struct tegra_bpmp_clk *clk = FUNC4(hw);
	struct cmd_clk_get_parent_response response;
	struct tegra_bpmp_clk_message msg;
	unsigned int i;
	int err;

	FUNC2(&msg, 0, sizeof(msg));
	msg.cmd = CMD_CLK_GET_PARENT;
	msg.id = clk->id;
	msg.rx.data = &response;
	msg.rx.size = sizeof(response);

	err = FUNC3(clk->bpmp, &msg);
	if (err < 0) {
		FUNC1(clk->bpmp->dev, "failed to get parent for %s: %d\n",
			FUNC0(hw), err);
		return U8_MAX;
	}

	for (i = 0; i < clk->num_parents; i++)
		if (clk->parents[i] == response.parent_id)
			return i;

	return U8_MAX;
}