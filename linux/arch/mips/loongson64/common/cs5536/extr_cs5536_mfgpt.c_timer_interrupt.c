
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int DIVIL_LBAR_MFGPT ;
 int DIVIL_MSR_REG (int ) ;
 int IRQ_HANDLED ;
 int MFGPT0_SETUP ;
 int _rdmsr (int ,int *,int *) ;
 int inw (int ) ;
 int mfgpt_base ;
 TYPE_1__ mfgpt_clockevent ;
 int outw (int,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 u32 basehi;







 _rdmsr(DIVIL_MSR_REG(DIVIL_LBAR_MFGPT), &basehi, &mfgpt_base);


 outw(inw(MFGPT0_SETUP) | 0x4000, MFGPT0_SETUP);

 mfgpt_clockevent.event_handler(&mfgpt_clockevent);

 return IRQ_HANDLED;
}
