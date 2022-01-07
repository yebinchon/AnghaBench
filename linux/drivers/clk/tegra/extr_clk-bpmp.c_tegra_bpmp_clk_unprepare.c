
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_clk_message {int id; int cmd; } ;
struct tegra_bpmp_clk {TYPE_1__* bpmp; int id; } ;
struct clk_hw {int dummy; } ;
typedef int msg ;
struct TYPE_2__ {int dev; } ;


 int CMD_CLK_DISABLE ;
 int clk_hw_get_name (struct clk_hw*) ;
 int dev_err (int ,char*,int ,int) ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int tegra_bpmp_clk_transfer (TYPE_1__*,struct tegra_bpmp_clk_message*) ;
 struct tegra_bpmp_clk* to_tegra_bpmp_clk (struct clk_hw*) ;

__attribute__((used)) static void tegra_bpmp_clk_unprepare(struct clk_hw *hw)
{
 struct tegra_bpmp_clk *clk = to_tegra_bpmp_clk(hw);
 struct tegra_bpmp_clk_message msg;
 int err;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_DISABLE;
 msg.id = clk->id;

 err = tegra_bpmp_clk_transfer(clk->bpmp, &msg);
 if (err < 0)
  dev_err(clk->bpmp->dev, "failed to disable clock %s: %d\n",
   clk_hw_get_name(hw), err);
}
