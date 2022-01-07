
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct owl_clk_desc {int hw_clks; } ;


 int owl_clk_probe (int *,int ) ;
 int owl_clk_regmap_init (struct platform_device*,struct owl_clk_desc*) ;
 struct owl_clk_desc s500_clk_desc ;

__attribute__((used)) static int s500_clk_probe(struct platform_device *pdev)
{
 struct owl_clk_desc *desc;

 desc = &s500_clk_desc;
 owl_clk_regmap_init(pdev, desc);

 return owl_clk_probe(&pdev->dev, desc->hw_clks);
}
