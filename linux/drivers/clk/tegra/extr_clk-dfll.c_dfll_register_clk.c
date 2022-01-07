
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* init; } ;
struct tegra_dfll {int dfll_clk; TYPE_2__* dev; TYPE_4__ dfll_clk_hw; int output_clock_name; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_5__ {int name; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int clk_register (TYPE_2__*,TYPE_4__*) ;
 int clk_unregister (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 TYPE_1__ dfll_clk_init_data ;
 int of_clk_add_provider (int ,int ,int ) ;
 int of_clk_src_simple_get ;

__attribute__((used)) static int dfll_register_clk(struct tegra_dfll *td)
{
 int ret;

 dfll_clk_init_data.name = td->output_clock_name;
 td->dfll_clk_hw.init = &dfll_clk_init_data;

 td->dfll_clk = clk_register(td->dev, &td->dfll_clk_hw);
 if (IS_ERR(td->dfll_clk)) {
  dev_err(td->dev, "DFLL clock registration error\n");
  return -EINVAL;
 }

 ret = of_clk_add_provider(td->dev->of_node, of_clk_src_simple_get,
      td->dfll_clk);
 if (ret) {
  dev_err(td->dev, "of_clk_add_provider() failed\n");

  clk_unregister(td->dfll_clk);
  return ret;
 }

 return 0;
}
