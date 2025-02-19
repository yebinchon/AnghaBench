
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_clk_info {int name; int id; } ;
struct tegra_bpmp_clk {int dummy; } ;
struct tegra_bpmp {unsigned int num_clocks; struct tegra_bpmp_clk** clocks; int dev; } ;
typedef int clk ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tegra_bpmp_clk*) ;
 int PTR_ERR (struct tegra_bpmp_clk*) ;
 int dev_err (int ,char*,int ,int ,int ) ;
 struct tegra_bpmp_clk** devm_kcalloc (int ,unsigned int,int,int ) ;
 struct tegra_bpmp_clk* tegra_bpmp_clk_register (struct tegra_bpmp*,struct tegra_bpmp_clk_info*,struct tegra_bpmp_clk_info*,unsigned int) ;

__attribute__((used)) static int tegra_bpmp_register_clocks(struct tegra_bpmp *bpmp,
          struct tegra_bpmp_clk_info *infos,
          unsigned int count)
{
 struct tegra_bpmp_clk *clk;
 unsigned int i;

 bpmp->num_clocks = count;

 bpmp->clocks = devm_kcalloc(bpmp->dev, count, sizeof(clk), GFP_KERNEL);
 if (!bpmp->clocks)
  return -ENOMEM;

 for (i = 0; i < count; i++) {
  struct tegra_bpmp_clk_info *info = &infos[i];

  clk = tegra_bpmp_clk_register(bpmp, info, infos, count);
  if (IS_ERR(clk)) {
   dev_err(bpmp->dev,
    "failed to register clock %u (%s): %ld\n",
    info->id, info->name, PTR_ERR(clk));
   continue;
  }

  bpmp->clocks[i] = clk;
 }

 return 0;
}
