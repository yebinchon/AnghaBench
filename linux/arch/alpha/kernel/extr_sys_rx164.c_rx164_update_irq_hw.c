
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ POLARIS_DENSE_CONFIG_BASE ;
 int mb () ;

__attribute__((used)) static inline void
rx164_update_irq_hw(unsigned long mask)
{
 volatile unsigned int *irq_mask;

 irq_mask = (void *)(POLARIS_DENSE_CONFIG_BASE + 0x74);
 *irq_mask = mask;
 mb();
 *irq_mask;
}
