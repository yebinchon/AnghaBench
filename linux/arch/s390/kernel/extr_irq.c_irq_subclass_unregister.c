
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum irq_subclass { ____Placeholder_irq_subclass } irq_subclass ;


 int ctl_clear_bit (int ,int) ;
 int irq_subclass_lock ;
 int * irq_subclass_refcount ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void irq_subclass_unregister(enum irq_subclass subclass)
{
 spin_lock(&irq_subclass_lock);
 irq_subclass_refcount[subclass]--;
 if (!irq_subclass_refcount[subclass])
  ctl_clear_bit(0, subclass);
 spin_unlock(&irq_subclass_lock);
}
