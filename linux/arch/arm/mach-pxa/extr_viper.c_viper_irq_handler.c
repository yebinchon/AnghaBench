
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int (* irq_ack ) (TYPE_2__*) ;} ;


 int __ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 scalar_t__ likely (unsigned long) ;
 int stub1 (TYPE_2__*) ;
 unsigned int viper_bit_to_irq (int ) ;
 unsigned long viper_irq_pending () ;

__attribute__((used)) static void viper_irq_handler(struct irq_desc *desc)
{
 unsigned int irq;
 unsigned long pending;

 pending = viper_irq_pending();
 do {


  desc->irq_data.chip->irq_ack(&desc->irq_data);

  if (likely(pending)) {
   irq = viper_bit_to_irq(__ffs(pending));
   generic_handle_irq(irq);
  }
  pending = viper_irq_pending();
 } while (pending);
}
