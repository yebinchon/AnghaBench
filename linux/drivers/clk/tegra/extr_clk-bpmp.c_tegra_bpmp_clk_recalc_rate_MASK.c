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
struct TYPE_4__ {int size; struct cmd_clk_get_rate_response* data; } ;
struct TYPE_3__ {int size; struct cmd_clk_get_rate_request* data; } ;
struct tegra_bpmp_clk_message {TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  id; int /*<<< orphan*/  cmd; } ;
struct tegra_bpmp_clk {int /*<<< orphan*/  bpmp; int /*<<< orphan*/  id; } ;
struct cmd_clk_get_rate_response {unsigned long rate; } ;
struct cmd_clk_get_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLK_GET_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_bpmp_clk_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct tegra_bpmp_clk_message*) ; 
 struct tegra_bpmp_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct tegra_bpmp_clk *clk = FUNC2(hw);
	struct cmd_clk_get_rate_response response;
	struct cmd_clk_get_rate_request request;
	struct tegra_bpmp_clk_message msg;
	int err;

	FUNC0(&msg, 0, sizeof(msg));
	msg.cmd = CMD_CLK_GET_RATE;
	msg.id = clk->id;
	msg.tx.data = &request;
	msg.tx.size = sizeof(request);
	msg.rx.data = &response;
	msg.rx.size = sizeof(response);

	err = FUNC1(clk->bpmp, &msg);
	if (err < 0)
		return err;

	return response.rate;
}