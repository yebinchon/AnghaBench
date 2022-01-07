
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int MSC01_IC_ENAH ;
 int MSC01_IC_ENAL ;
 int MSCIC_WRITE (int ,int) ;
 int irq_base ;

__attribute__((used)) static inline void unmask_msc_irq(struct irq_data *d)
{
 unsigned int irq = d->irq;

 if (irq < (irq_base + 32))
  MSCIC_WRITE(MSC01_IC_ENAL, 1<<(irq - irq_base));
 else
  MSCIC_WRITE(MSC01_IC_ENAH, 1<<(irq - irq_base - 32));
}
