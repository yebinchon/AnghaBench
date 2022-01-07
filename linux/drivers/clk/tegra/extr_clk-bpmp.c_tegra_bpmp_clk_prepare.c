
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_clk_message {int id; int cmd; } ;
struct tegra_bpmp_clk {int bpmp; int id; } ;
struct clk_hw {int dummy; } ;
typedef int msg ;


 int CMD_CLK_ENABLE ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int tegra_bpmp_clk_transfer (int ,struct tegra_bpmp_clk_message*) ;
 struct tegra_bpmp_clk* to_tegra_bpmp_clk (struct clk_hw*) ;

__attribute__((used)) static int tegra_bpmp_clk_prepare(struct clk_hw *hw)
{
 struct tegra_bpmp_clk *clk = to_tegra_bpmp_clk(hw);
 struct tegra_bpmp_clk_message msg;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_ENABLE;
 msg.id = clk->id;

 return tegra_bpmp_clk_transfer(clk->bpmp, &msg);
}
