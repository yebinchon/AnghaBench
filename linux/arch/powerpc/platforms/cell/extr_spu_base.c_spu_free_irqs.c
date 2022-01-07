
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu {scalar_t__* irqs; } ;


 int free_irq (scalar_t__,struct spu*) ;

__attribute__((used)) static void spu_free_irqs(struct spu *spu)
{
 if (spu->irqs[0])
  free_irq(spu->irqs[0], spu);
 if (spu->irqs[1])
  free_irq(spu->irqs[1], spu);
 if (spu->irqs[2])
  free_irq(spu->irqs[2], spu);
}
