
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_timer {scalar_t__ base; } ;


 scalar_t__ MX1_2_TSTAT ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void imx1_gpt_irq_acknowledge(struct imx_timer *imxtm)
{
 writel_relaxed(0, imxtm->base + MX1_2_TSTAT);
}
