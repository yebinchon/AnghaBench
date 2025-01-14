
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; struct cmd_clk_round_rate_response* data; } ;
struct TYPE_3__ {int size; struct tegra_bpmp_clk_message* data; } ;
struct tegra_bpmp_clk_message {unsigned long rate; TYPE_2__ rx; TYPE_1__ tx; int id; int cmd; } ;
struct tegra_bpmp_clk {int bpmp; int id; } ;
struct cmd_clk_round_rate_response {long rate; } ;
struct cmd_clk_round_rate_request {unsigned long rate; TYPE_2__ rx; TYPE_1__ tx; int id; int cmd; } ;
struct clk_hw {int dummy; } ;
typedef int response ;
typedef int request ;
typedef int msg ;


 int CMD_CLK_ROUND_RATE ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int tegra_bpmp_clk_transfer (int ,struct tegra_bpmp_clk_message*) ;
 struct tegra_bpmp_clk* to_tegra_bpmp_clk (struct clk_hw*) ;

__attribute__((used)) static long tegra_bpmp_clk_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 struct tegra_bpmp_clk *clk = to_tegra_bpmp_clk(hw);
 struct cmd_clk_round_rate_response response;
 struct cmd_clk_round_rate_request request;
 struct tegra_bpmp_clk_message msg;
 int err;

 memset(&request, 0, sizeof(request));
 request.rate = rate;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_ROUND_RATE;
 msg.id = clk->id;
 msg.tx.data = &request;
 msg.tx.size = sizeof(request);
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 err = tegra_bpmp_clk_transfer(clk->bpmp, &msg);
 if (err < 0)
  return err;

 return response.rate;
}
