
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GROUP0_IRQ_BASE ;

__attribute__((used)) static inline int irq_to_group(unsigned int irq_nr)
{
 return (irq_nr - GROUP0_IRQ_BASE) >> 5;
}
