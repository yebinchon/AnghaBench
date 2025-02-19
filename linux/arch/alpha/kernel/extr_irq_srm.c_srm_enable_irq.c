
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 int cserve_ena (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srm_irq_lock ;

__attribute__((used)) static inline void
srm_enable_irq(struct irq_data *d)
{
 spin_lock(&srm_irq_lock);
 cserve_ena(d->irq - 16);
 spin_unlock(&srm_irq_lock);
}
