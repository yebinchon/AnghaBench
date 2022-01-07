
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_clk_info {unsigned int num_parents; char* name; int flags; int id; int * parents; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct tegra_bpmp_clk {unsigned int num_parents; TYPE_1__ hw; int * parents; struct tegra_bpmp* bpmp; int id; } ;
struct tegra_bpmp {int dev; } ;
struct clk_init_data {char* name; unsigned int num_parents; char const** parent_names; int * ops; } ;
typedef int init ;


 int ENOMEM ;
 struct tegra_bpmp_clk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int TEGRA_BPMP_CLK_HAS_MUX ;
 int TEGRA_BPMP_CLK_HAS_SET_RATE ;
 int dev_err (int ,char*,int ,int ) ;
 int devm_clk_hw_register (int ,TYPE_1__*) ;
 int * devm_kcalloc (int ,unsigned int,int,int ) ;
 struct tegra_bpmp_clk* devm_kzalloc (int ,int,int ) ;
 char** kcalloc (unsigned int,int,int ) ;
 int kfree (char const**) ;
 int memset (struct clk_init_data*,int ,int) ;
 struct tegra_bpmp_clk_info* tegra_bpmp_clk_find (struct tegra_bpmp_clk_info const*,unsigned int,int ) ;
 int tegra_bpmp_clk_gate_ops ;
 int tegra_bpmp_clk_mux_ops ;
 int tegra_bpmp_clk_mux_rate_ops ;
 int tegra_bpmp_clk_rate_ops ;

__attribute__((used)) static struct tegra_bpmp_clk *
tegra_bpmp_clk_register(struct tegra_bpmp *bpmp,
   const struct tegra_bpmp_clk_info *info,
   const struct tegra_bpmp_clk_info *clocks,
   unsigned int num_clocks)
{
 struct tegra_bpmp_clk *clk;
 struct clk_init_data init;
 const char **parents;
 unsigned int i;
 int err;

 clk = devm_kzalloc(bpmp->dev, sizeof(*clk), GFP_KERNEL);
 if (!clk)
  return ERR_PTR(-ENOMEM);

 clk->id = info->id;
 clk->bpmp = bpmp;

 clk->parents = devm_kcalloc(bpmp->dev, info->num_parents,
        sizeof(*clk->parents), GFP_KERNEL);
 if (!clk->parents)
  return ERR_PTR(-ENOMEM);

 clk->num_parents = info->num_parents;


 memset(&init, 0, sizeof(init));
 init.name = info->name;
 clk->hw.init = &init;

 if (info->flags & TEGRA_BPMP_CLK_HAS_MUX) {
  if (info->flags & TEGRA_BPMP_CLK_HAS_SET_RATE)
   init.ops = &tegra_bpmp_clk_mux_rate_ops;
  else
   init.ops = &tegra_bpmp_clk_mux_ops;
 } else {
  if (info->flags & TEGRA_BPMP_CLK_HAS_SET_RATE)
   init.ops = &tegra_bpmp_clk_rate_ops;
  else
   init.ops = &tegra_bpmp_clk_gate_ops;
 }

 init.num_parents = info->num_parents;

 parents = kcalloc(info->num_parents, sizeof(*parents), GFP_KERNEL);
 if (!parents)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < info->num_parents; i++) {
  const struct tegra_bpmp_clk_info *parent;


  clk->parents[i] = info->parents[i];

  parent = tegra_bpmp_clk_find(clocks, num_clocks,
          info->parents[i]);
  if (!parent) {
   dev_err(bpmp->dev, "no parent %u found for %u\n",
    info->parents[i], info->id);
   continue;
  }

  parents[i] = parent->name;
 }

 init.parent_names = parents;

 err = devm_clk_hw_register(bpmp->dev, &clk->hw);

 kfree(parents);

 if (err < 0)
  return ERR_PTR(err);

 return clk;
}
