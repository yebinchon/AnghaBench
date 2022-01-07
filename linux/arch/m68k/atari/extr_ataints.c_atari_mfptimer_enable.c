
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int int_mask; } ;


 int IRQ_MFP_TIMD ;
 int IRQ_MFP_TIMER1 ;
 int atari_enable_irq (int ) ;
 TYPE_1__ stmfp_base ;

__attribute__((used)) static void atari_mfptimer_enable(struct irq_data *data)
{
 int mfp_num = data->irq - IRQ_MFP_TIMER1;
 stmfp_base.int_mask |= 1 << mfp_num;
 atari_enable_irq(IRQ_MFP_TIMD);
}
