
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_pwr {scalar_t__ regs; } ;


 scalar_t__ PM_ICS ;
 int PM_ICS_IE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mid_pwr_interrupt_disable(struct mid_pwr *pwr)
{
 writel(~PM_ICS_IE, pwr->regs + PM_ICS);
}
