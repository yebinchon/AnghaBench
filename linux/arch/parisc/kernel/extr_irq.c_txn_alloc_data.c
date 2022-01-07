
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CPU_IRQ_BASE ;

unsigned int txn_alloc_data(unsigned int virt_irq)
{
 return virt_irq - CPU_IRQ_BASE;
}
