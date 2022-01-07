
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_timer {scalar_t__ base; } ;


 unsigned int MX1_2_TCTL_IRQEN ;
 scalar_t__ MXC_TCTL ;
 unsigned int readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void imx1_gpt_irq_disable(struct imx_timer *imxtm)
{
 unsigned int tmp;

 tmp = readl_relaxed(imxtm->base + MXC_TCTL);
 writel_relaxed(tmp & ~MX1_2_TCTL_IRQEN, imxtm->base + MXC_TCTL);
}
