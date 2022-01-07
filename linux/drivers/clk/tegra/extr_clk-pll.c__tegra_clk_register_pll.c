
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct clk_init_data* init; } ;
struct tegra_clk_pll {TYPE_2__ hw; TYPE_1__* params; } ;
struct clk_ops {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; struct clk_ops const* ops; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int flags; int (* set_defaults ) (struct tegra_clk_pll*) ;scalar_t__ calc_rate; } ;


 int TEGRA_PLLM ;
 scalar_t__ _calc_dynamic_ramp_rate ;
 scalar_t__ _calc_rate ;
 struct clk* clk_register (int *,TYPE_2__*) ;
 int stub1 (struct tegra_clk_pll*) ;

__attribute__((used)) static struct clk *_tegra_clk_register_pll(struct tegra_clk_pll *pll,
  const char *name, const char *parent_name, unsigned long flags,
  const struct clk_ops *ops)
{
 struct clk_init_data init;

 init.name = name;
 init.ops = ops;
 init.flags = flags;
 init.parent_names = (parent_name ? &parent_name : ((void*)0));
 init.num_parents = (parent_name ? 1 : 0);


 if (!pll->params->calc_rate) {
  if (pll->params->flags & TEGRA_PLLM)
   pll->params->calc_rate = _calc_dynamic_ramp_rate;
  else
   pll->params->calc_rate = _calc_rate;
 }

 if (pll->params->set_defaults)
  pll->params->set_defaults(pll);


 pll->hw.init = &init;

 return clk_register(((void*)0), &pll->hw);
}
