
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int irq_domain_associate (struct irq_domain*,int,int) ;

__attribute__((used)) static int octeon_irq_force_ciu_mapping(struct irq_domain *domain,
     int irq, int line, int bit)
{
 return irq_domain_associate(domain, irq, line << 6 | bit);
}
