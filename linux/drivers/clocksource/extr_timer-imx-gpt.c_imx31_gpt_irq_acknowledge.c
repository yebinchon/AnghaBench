
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_timer {scalar_t__ base; } ;


 scalar_t__ V2_TSTAT ;
 int V2_TSTAT_OF1 ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void imx31_gpt_irq_acknowledge(struct imx_timer *imxtm)
{
 writel_relaxed(V2_TSTAT_OF1, imxtm->base + V2_TSTAT);
}
