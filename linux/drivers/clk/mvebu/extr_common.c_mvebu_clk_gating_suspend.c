
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int saved_reg; } ;


 TYPE_1__* ctrl ;
 int readl (int ) ;

__attribute__((used)) static int mvebu_clk_gating_suspend(void)
{
 ctrl->saved_reg = readl(ctrl->base);
 return 0;
}
