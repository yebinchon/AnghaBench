
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ST_MAX_CLKS ;
 int clk_hw_unregister (int ) ;
 int * hws ;

__attribute__((used)) static int st_clk_remove(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < ST_MAX_CLKS; i++)
  clk_hw_unregister(hws[i]);
 return 0;
}
