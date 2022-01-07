
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int octeon_irq_chip_ciu3 ;
 int octeon_irq_ciu3_mapx (struct irq_domain*,unsigned int,int ,int *) ;

__attribute__((used)) static int octeon_irq_ciu3_map(struct irq_domain *d,
          unsigned int virq, irq_hw_number_t hw)
{
 return octeon_irq_ciu3_mapx(d, virq, hw, &octeon_irq_chip_ciu3);
}
