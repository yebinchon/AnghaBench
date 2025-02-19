
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 int EINVAL ;
 int INTASSIGN0 ;
 int INTASSIGN1 ;
 int INTASSIGN_MASK ;
 unsigned int SYSINT1_IRQ_TO_PIN (unsigned int) ;
 int icu1_read (int ) ;
 int icu1_write (int ,int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 unsigned char* sysint1_assign ;

__attribute__((used)) static inline int set_sysint1_assign(unsigned int irq, unsigned char assign)
{
 struct irq_desc *desc = irq_to_desc(irq);
 uint16_t intassign0, intassign1;
 unsigned int pin;

 pin = SYSINT1_IRQ_TO_PIN(irq);

 raw_spin_lock_irq(&desc->lock);

 intassign0 = icu1_read(INTASSIGN0);
 intassign1 = icu1_read(INTASSIGN1);

 switch (pin) {
 case 0:
  intassign0 &= ~INTASSIGN_MASK;
  intassign0 |= (uint16_t)assign;
  break;
 case 1:
  intassign0 &= ~(INTASSIGN_MASK << 3);
  intassign0 |= (uint16_t)assign << 3;
  break;
 case 2:
  intassign0 &= ~(INTASSIGN_MASK << 6);
  intassign0 |= (uint16_t)assign << 6;
  break;
 case 3:
  intassign0 &= ~(INTASSIGN_MASK << 9);
  intassign0 |= (uint16_t)assign << 9;
  break;
 case 8:
  intassign0 &= ~(INTASSIGN_MASK << 12);
  intassign0 |= (uint16_t)assign << 12;
  break;
 case 9:
  intassign1 &= ~INTASSIGN_MASK;
  intassign1 |= (uint16_t)assign;
  break;
 case 11:
  intassign1 &= ~(INTASSIGN_MASK << 6);
  intassign1 |= (uint16_t)assign << 6;
  break;
 case 12:
  intassign1 &= ~(INTASSIGN_MASK << 9);
  intassign1 |= (uint16_t)assign << 9;
  break;
 default:
  raw_spin_unlock_irq(&desc->lock);
  return -EINVAL;
 }

 sysint1_assign[pin] = assign;
 icu1_write(INTASSIGN0, intassign0);
 icu1_write(INTASSIGN1, intassign1);

 raw_spin_unlock_irq(&desc->lock);

 return 0;
}
