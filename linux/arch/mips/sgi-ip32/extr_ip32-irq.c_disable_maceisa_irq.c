
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_8__ {unsigned int imask; } ;
struct TYPE_5__ {int imask; } ;
struct TYPE_6__ {TYPE_1__ ctrl; } ;
struct TYPE_7__ {TYPE_2__ perif; } ;


 int MACEISA_AUDIO_INT ;
 int MACEISA_AUDIO_SW_IRQ ;
 int MACEISA_MISC_INT ;
 int MACEISA_SUPERIO_INT ;
 unsigned int MACE_AUDIO_INT ;
 unsigned int MACE_MISC_INT ;
 unsigned int MACE_SUPERIO_INT ;
 TYPE_4__* crime ;
 unsigned int crime_mask ;
 int flush_crime_bus () ;
 int flush_mace_bus () ;
 TYPE_3__* mace ;
 int maceisa_mask ;

__attribute__((used)) static void disable_maceisa_irq(struct irq_data *d)
{
 unsigned int crime_int = 0;

 maceisa_mask &= ~(1 << (d->irq - MACEISA_AUDIO_SW_IRQ));
 if (!(maceisa_mask & MACEISA_AUDIO_INT))
  crime_int |= MACE_AUDIO_INT;
 if (!(maceisa_mask & MACEISA_MISC_INT))
  crime_int |= MACE_MISC_INT;
 if (!(maceisa_mask & MACEISA_SUPERIO_INT))
  crime_int |= MACE_SUPERIO_INT;
 crime_mask &= ~crime_int;
 crime->imask = crime_mask;
 flush_crime_bus();
 mace->perif.ctrl.imask = maceisa_mask;
 flush_mace_bus();
}
