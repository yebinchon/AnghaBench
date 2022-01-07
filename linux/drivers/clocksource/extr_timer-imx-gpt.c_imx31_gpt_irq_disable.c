
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_timer {scalar_t__ base; } ;


 scalar_t__ V2_IR ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void imx31_gpt_irq_disable(struct imx_timer *imxtm)
{
 writel_relaxed(0, imxtm->base + V2_IR);
}
