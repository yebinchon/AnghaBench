
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; struct cmd_clk_is_enabled_response* data; } ;
struct tegra_bpmp_clk_message {TYPE_1__ rx; int id; int cmd; } ;
struct tegra_bpmp_clk {int bpmp; int id; } ;
struct cmd_clk_is_enabled_response {int state; } ;
struct clk_hw {int dummy; } ;
typedef int response ;
typedef int msg ;


 int CMD_CLK_IS_ENABLED ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int tegra_bpmp_clk_transfer (int ,struct tegra_bpmp_clk_message*) ;
 struct tegra_bpmp_clk* to_tegra_bpmp_clk (struct clk_hw*) ;

__attribute__((used)) static int tegra_bpmp_clk_is_prepared(struct clk_hw *hw)
{
 struct tegra_bpmp_clk *clk = to_tegra_bpmp_clk(hw);
 struct cmd_clk_is_enabled_response response;
 struct tegra_bpmp_clk_message msg;
 int err;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_IS_ENABLED;
 msg.id = clk->id;
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 err = tegra_bpmp_clk_transfer(clk->bpmp, &msg);
 if (err < 0)
  return err;

 return response.state;
}
