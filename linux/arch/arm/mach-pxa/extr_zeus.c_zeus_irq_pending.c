
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZEUS_CPLD_ISA_IRQ ;
 unsigned long __raw_readw (int ) ;
 unsigned long zeus_irq_enabled_mask ;

__attribute__((used)) static inline unsigned long zeus_irq_pending(void)
{
 return __raw_readw(ZEUS_CPLD_ISA_IRQ) & zeus_irq_enabled_mask;
}
