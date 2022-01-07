
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {unsigned int* args; } ;
struct lochnagar_clk_priv {TYPE_1__* lclks; int dev; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct clk_hw hw; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 struct clk_hw* ERR_PTR (int ) ;
 int dev_err (int ,char*,unsigned int) ;

__attribute__((used)) static struct clk_hw *
lochnagar_of_clk_hw_get(struct of_phandle_args *clkspec, void *data)
{
 struct lochnagar_clk_priv *priv = data;
 unsigned int idx = clkspec->args[0];

 if (idx >= ARRAY_SIZE(priv->lclks)) {
  dev_err(priv->dev, "Invalid index %u\n", idx);
  return ERR_PTR(-EINVAL);
 }

 return &priv->lclks[idx].hw;
}
