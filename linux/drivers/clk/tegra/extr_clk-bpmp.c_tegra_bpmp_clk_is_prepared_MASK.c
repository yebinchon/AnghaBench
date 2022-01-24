#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int size; struct cmd_clk_is_enabled_response* data; } ;
struct tegra_bpmp_clk_message {TYPE_1__ rx; int /*<<< orphan*/  id; int /*<<< orphan*/  cmd; } ;
struct tegra_bpmp_clk {int /*<<< orphan*/  bpmp; int /*<<< orphan*/  id; } ;
struct cmd_clk_is_enabled_response {int state; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLK_IS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_bpmp_clk_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct tegra_bpmp_clk_message*) ; 
 struct tegra_bpmp_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct tegra_bpmp_clk *clk = FUNC2(hw);
	struct cmd_clk_is_enabled_response response;
	struct tegra_bpmp_clk_message msg;
	int err;

	FUNC0(&msg, 0, sizeof(msg));
	msg.cmd = CMD_CLK_IS_ENABLED;
	msg.id = clk->id;
	msg.rx.data = &response;
	msg.rx.size = sizeof(response);

	err = FUNC1(clk->bpmp, &msg);
	if (err < 0)
		return err;

	return response.state;
}