
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct TYPE_2__ {struct irq_domain* irqdomain; } ;


 TYPE_1__* ioapics ;

__attribute__((used)) static inline struct irq_domain *mp_ioapic_irqdomain(int ioapic)
{
 return ioapics[ioapic].irqdomain;
}
