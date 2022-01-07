
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2mps11_clk {int lookup; int clk_np; } ;
struct platform_device {int dummy; } ;


 int S2MPS11_CLKS_NUM ;
 int clkdev_drop (int ) ;
 int of_clk_del_provider (int ) ;
 int of_node_put (int ) ;
 struct s2mps11_clk* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s2mps11_clk_remove(struct platform_device *pdev)
{
 struct s2mps11_clk *s2mps11_clks = platform_get_drvdata(pdev);
 int i;

 of_clk_del_provider(s2mps11_clks[0].clk_np);

 of_node_put(s2mps11_clks[0].clk_np);

 for (i = 0; i < S2MPS11_CLKS_NUM; i++) {

  if (!s2mps11_clks[i].lookup)
   continue;
  clkdev_drop(s2mps11_clks[i].lookup);
 }

 return 0;
}
