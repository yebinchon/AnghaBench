
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int size; struct cmd_clk_set_parent_response* data; } ;
struct TYPE_3__ {int size; struct tegra_bpmp_clk_message* data; } ;
struct tegra_bpmp_clk_message {TYPE_2__ rx; TYPE_1__ tx; int id; int cmd; int parent_id; } ;
struct tegra_bpmp_clk {int bpmp; int id; int * parents; } ;
struct cmd_clk_set_parent_response {int dummy; } ;
struct cmd_clk_set_parent_request {TYPE_2__ rx; TYPE_1__ tx; int id; int cmd; int parent_id; } ;
struct clk_hw {int dummy; } ;
typedef int response ;
typedef int request ;
typedef int msg ;


 int CMD_CLK_SET_PARENT ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int tegra_bpmp_clk_transfer (int ,struct tegra_bpmp_clk_message*) ;
 struct tegra_bpmp_clk* to_tegra_bpmp_clk (struct clk_hw*) ;

__attribute__((used)) static int tegra_bpmp_clk_set_parent(struct clk_hw *hw, u8 index)
{
 struct tegra_bpmp_clk *clk = to_tegra_bpmp_clk(hw);
 struct cmd_clk_set_parent_response response;
 struct cmd_clk_set_parent_request request;
 struct tegra_bpmp_clk_message msg;
 int err;

 memset(&request, 0, sizeof(request));
 request.parent_id = clk->parents[index];

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_SET_PARENT;
 msg.id = clk->id;
 msg.tx.data = &request;
 msg.tx.size = sizeof(request);
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 err = tegra_bpmp_clk_transfer(clk->bpmp, &msg);
 if (err < 0)
  return err;



 return 0;
}
