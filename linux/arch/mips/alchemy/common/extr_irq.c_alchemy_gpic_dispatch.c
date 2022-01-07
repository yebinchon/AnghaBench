
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 scalar_t__ ALCHEMY_GPIC_INT_BASE ;
 scalar_t__ AU1300_GPIC_ADDR ;
 scalar_t__ AU1300_GPIC_PRIENC ;
 int __raw_readl (scalar_t__) ;
 int generic_handle_irq (scalar_t__) ;

__attribute__((used)) static void alchemy_gpic_dispatch(struct irq_desc *d)
{
 int i = __raw_readl(AU1300_GPIC_ADDR + AU1300_GPIC_PRIENC);
 generic_handle_irq(ALCHEMY_GPIC_INT_BASE + i);
}
