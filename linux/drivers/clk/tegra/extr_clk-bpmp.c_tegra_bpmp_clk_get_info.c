
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; struct cmd_clk_get_all_info_response* data; } ;
struct tegra_bpmp_clk_message {unsigned int id; TYPE_1__ rx; int cmd; } ;
struct tegra_bpmp_clk_info {unsigned int num_parents; int flags; int * parents; int name; } ;
struct tegra_bpmp {int dummy; } ;
struct cmd_clk_get_all_info_response {unsigned int num_parents; int flags; int * parents; int name; } ;
typedef int response ;
typedef int msg ;


 int CMD_CLK_GET_ALL_INFO ;
 int MRQ_CLK_NAME_MAXLEN ;
 int memset (struct tegra_bpmp_clk_message*,int ,int) ;
 int strlcpy (int ,int ,int ) ;
 int tegra_bpmp_clk_transfer (struct tegra_bpmp*,struct tegra_bpmp_clk_message*) ;

__attribute__((used)) static int tegra_bpmp_clk_get_info(struct tegra_bpmp *bpmp, unsigned int id,
       struct tegra_bpmp_clk_info *info)
{
 struct cmd_clk_get_all_info_response response;
 struct tegra_bpmp_clk_message msg;
 unsigned int i;
 int err;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = CMD_CLK_GET_ALL_INFO;
 msg.id = id;
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 err = tegra_bpmp_clk_transfer(bpmp, &msg);
 if (err < 0)
  return err;

 strlcpy(info->name, response.name, MRQ_CLK_NAME_MAXLEN);
 info->num_parents = response.num_parents;

 for (i = 0; i < info->num_parents; i++)
  info->parents[i] = response.parents[i];

 info->flags = response.flags;

 return 0;
}
