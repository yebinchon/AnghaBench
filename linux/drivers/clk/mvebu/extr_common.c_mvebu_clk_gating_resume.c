
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int saved_reg; } ;


 TYPE_1__* ctrl ;
 int writel (int ,int ) ;

__attribute__((used)) static void mvebu_clk_gating_resume(void)
{
 writel(ctrl->saved_reg, ctrl->base);
}
