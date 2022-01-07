
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_happened; } ;






 int PACA_IRQ_DBELL ;
 int PACA_IRQ_EE ;
 int PACA_IRQ_HMI ;
 TYPE_1__* local_paca ;
 int replay_system_reset () ;

__attribute__((used)) static void set_irq_happened(int trap)
{
 switch (trap) {
 case 131:
  local_paca->irq_happened |= PACA_IRQ_EE;
  break;
 case 129:
  local_paca->irq_happened |= PACA_IRQ_DBELL;
  break;
 case 130:
  local_paca->irq_happened |= PACA_IRQ_HMI;
  break;
 case 128:
  replay_system_reset();
  break;
 }
}
