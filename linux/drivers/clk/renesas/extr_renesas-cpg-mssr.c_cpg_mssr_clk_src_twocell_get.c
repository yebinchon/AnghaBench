
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {unsigned int* args; } ;
struct device {int dummy; } ;
struct cpg_mssr_priv {unsigned int last_dt_core_clk; unsigned int num_mod_clks; int num_core_clks; struct clk** clks; int stbyctrl; struct device* dev; } ;
struct clk {int dummy; } ;




 int EINVAL ;
 struct clk* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct clk*) ;
 unsigned int MOD_CLK_PACK (unsigned int) ;
 unsigned int MOD_CLK_PACK_10 (unsigned int) ;
 int PTR_ERR (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,struct clk*,int ) ;
 int dev_err (struct device*,char*,...) ;

__attribute__((used)) static
struct clk *cpg_mssr_clk_src_twocell_get(struct of_phandle_args *clkspec,
      void *data)
{
 unsigned int clkidx = clkspec->args[1];
 struct cpg_mssr_priv *priv = data;
 struct device *dev = priv->dev;
 unsigned int idx;
 const char *type;
 struct clk *clk;
 int range_check;

 switch (clkspec->args[0]) {
 case 129:
  type = "core";
  if (clkidx > priv->last_dt_core_clk) {
   dev_err(dev, "Invalid %s clock index %u\n", type,
          clkidx);
   return ERR_PTR(-EINVAL);
  }
  clk = priv->clks[clkidx];
  break;

 case 128:
  type = "module";
  if (priv->stbyctrl) {
   idx = MOD_CLK_PACK_10(clkidx);
   range_check = 7 - (clkidx % 10);
  } else {
   idx = MOD_CLK_PACK(clkidx);
   range_check = 31 - (clkidx % 100);
  }
  if (range_check < 0 || idx >= priv->num_mod_clks) {
   dev_err(dev, "Invalid %s clock index %u\n", type,
    clkidx);
   return ERR_PTR(-EINVAL);
  }
  clk = priv->clks[priv->num_core_clks + idx];
  break;

 default:
  dev_err(dev, "Invalid CPG clock type %u\n", clkspec->args[0]);
  return ERR_PTR(-EINVAL);
 }

 if (IS_ERR(clk))
  dev_err(dev, "Cannot get %s clock %u: %ld", type, clkidx,
         PTR_ERR(clk));
 else
  dev_dbg(dev, "clock (%u, %u) is %pC at %lu Hz\n",
   clkspec->args[0], clkspec->args[1], clk,
   clk_get_rate(clk));
 return clk;
}
