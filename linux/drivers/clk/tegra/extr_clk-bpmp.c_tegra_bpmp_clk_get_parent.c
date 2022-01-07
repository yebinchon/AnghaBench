
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct TYPE_3__ {int size; struct cmd_clk_get_parent_response* data; } ;
struct tegra_bpmp_clk_message {TYPE_1__ rx; int id; int cmd; } ;
struct tegra_bpmp_clk {unsigned int num_parents; scalar_t__* parents; TYPE_2__* bpmp; int id; } ;
struct cmd_clk_get_parent_response {scalar_t__ parent_id; } ;
struct clk_hw {int dummy; } ;
typedef int response ;
typedef int msg ;
struct TYPE_4__ {int dev; } ;


 int CMD_CLK_GET_PARENT ;
 unsigned int U8_MAX ;
 int clk_hw_get_name (struct clk_hw*) ;
 int dev_err (int ,char*,int ,int) ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int tegra_bpmp_clk_transfer (TYPE_2__*,struct tegra_bpmp_clk_message*) ;
 struct tegra_bpmp_clk* to_tegra_bpmp_clk (struct clk_hw*) ;

__attribute__((used)) static u8 tegra_bpmp_clk_get_parent(struct clk_hw *hw)
{
 struct tegra_bpmp_clk *clk = to_tegra_bpmp_clk(hw);
 struct cmd_clk_get_parent_response response;
 struct tegra_bpmp_clk_message msg;
 unsigned int i;
 int err;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_GET_PARENT;
 msg.id = clk->id;
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 err = tegra_bpmp_clk_transfer(clk->bpmp, &msg);
 if (err < 0) {
  dev_err(clk->bpmp->dev, "failed to get parent for %s: %d\n",
   clk_hw_get_name(hw), err);
  return U8_MAX;
 }

 for (i = 0; i < clk->num_parents; i++)
  if (clk->parents[i] == response.parent_id)
   return i;

 return U8_MAX;
}
