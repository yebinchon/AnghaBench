
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slot_no; int irqaddr; int irqmask; TYPE_3__* ops; int claimed; struct TYPE_5__* next; } ;
typedef TYPE_1__ ecard_t ;
struct TYPE_6__ {scalar_t__ (* irqpending ) (TYPE_1__*) ;} ;


 TYPE_1__* cards ;
 TYPE_3__ ecard_default_ops ;
 int printk (char*,...) ;
 int readb (int ) ;
 scalar_t__ stub1 (TYPE_1__*) ;

__attribute__((used)) static void ecard_dump_irq_state(void)
{
 ecard_t *ec;

 printk("Expansion card IRQ state:\n");

 for (ec = cards; ec; ec = ec->next) {
  const char *claimed;

  if (ec->slot_no == 8)
   continue;

  claimed = ec->claimed ? "" : "not ";

  if (ec->ops && ec->ops->irqpending &&
      ec->ops != &ecard_default_ops)
   printk("  %d: %sclaimed irq %spending\n",
          ec->slot_no, claimed,
          ec->ops->irqpending(ec) ? "" : "not ");
  else
   printk("  %d: %sclaimed irqaddr %p, mask = %02X, status = %02X\n",
          ec->slot_no, claimed,
          ec->irqaddr, ec->irqmask, readb(ec->irqaddr));
 }
}
