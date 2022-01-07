
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;


 int SYST_CON_EN ;
 int SYST_CON_IRQ_CLR ;
 int SYST_CON_REG (struct timer_of*) ;
 int writel (int,int ) ;

__attribute__((used)) static void mtk_syst_ack_irq(struct timer_of *to)
{

 writel(SYST_CON_IRQ_CLR | SYST_CON_EN, SYST_CON_REG(to));
}
