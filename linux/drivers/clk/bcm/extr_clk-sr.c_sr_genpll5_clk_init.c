
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int iproc_pll_clk_setup (int ,int *,int *,int ,int ,int ) ;
 int sr_genpll5 ;
 int sr_genpll5_clk ;

__attribute__((used)) static int sr_genpll5_clk_init(struct platform_device *pdev)
{
 iproc_pll_clk_setup(pdev->dev.of_node,
       &sr_genpll5, ((void*)0), 0, sr_genpll5_clk,
       ARRAY_SIZE(sr_genpll5_clk));
 return 0;
}
