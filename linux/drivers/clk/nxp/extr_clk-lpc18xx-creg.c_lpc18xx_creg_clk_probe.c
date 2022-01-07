
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int parent; } ;
struct TYPE_5__ {int name; } ;


 size_t CREG_CLK_1KHZ ;
 size_t CREG_CLK_32KHZ ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int * clk_creg ;
 TYPE_2__* clk_creg_clocks ;
 int clk_creg_data ;
 int * clk_creg_early ;
 int clk_register_creg_clk (int *,TYPE_2__*,int *,struct regmap*) ;
 int dev_err (TYPE_1__*,char*) ;
 int of_clk_add_provider (struct device_node*,int ,int *) ;
 int of_clk_src_onecell_get ;
 struct regmap* syscon_node_to_regmap (int ) ;

__attribute__((used)) static int lpc18xx_creg_clk_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct regmap *syscon;

 syscon = syscon_node_to_regmap(np->parent);
 if (IS_ERR(syscon)) {
  dev_err(&pdev->dev, "syscon lookup failed\n");
  return PTR_ERR(syscon);
 }

 clk_creg[CREG_CLK_32KHZ] = clk_creg_early[CREG_CLK_32KHZ];
 clk_creg[CREG_CLK_1KHZ] =
  clk_register_creg_clk(((void*)0), &clk_creg_clocks[CREG_CLK_1KHZ],
          &clk_creg_clocks[CREG_CLK_32KHZ].name,
          syscon);

 return of_clk_add_provider(np, of_clk_src_onecell_get, &clk_creg_data);
}
