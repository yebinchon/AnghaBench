
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonypi_irq_list {int bits; scalar_t__ irq; } ;
struct sonypi_device {int bits; scalar_t__ irq; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int request_irq (scalar_t__,int ,int ,char*,int ) ;
 int sonypi_irq ;

__attribute__((used)) static int sonypi_setup_irq(struct sonypi_device *dev,
          const struct sonypi_irq_list *irq_list)
{
 while (irq_list->irq) {

  if (!request_irq(irq_list->irq, sonypi_irq,
     IRQF_SHARED, "sonypi", sonypi_irq)) {
   dev->irq = irq_list->irq;
   dev->bits = irq_list->bits;
   return 0;
  }
  irq_list++;
 }

 return -EBUSY;
}
