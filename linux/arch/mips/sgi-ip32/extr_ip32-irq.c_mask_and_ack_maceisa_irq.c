
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_4__ {unsigned long istat; } ;
struct TYPE_5__ {TYPE_1__ ctrl; } ;
struct TYPE_6__ {TYPE_2__ perif; } ;


 int MACEISA_AUDIO_SW_IRQ ;
 int disable_maceisa_irq (struct irq_data*) ;
 TYPE_3__* mace ;

__attribute__((used)) static void mask_and_ack_maceisa_irq(struct irq_data *d)
{
 unsigned long mace_int;


 mace_int = mace->perif.ctrl.istat;
 mace_int &= ~(1 << (d->irq - MACEISA_AUDIO_SW_IRQ));
 mace->perif.ctrl.istat = mace_int;

 disable_maceisa_irq(d);
}
