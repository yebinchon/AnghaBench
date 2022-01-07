
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_IRQ_OFFSET ;
 size_t cpu_logical_map (int) ;
 int * ipi_set0_regs ;
 int loongson3_ipi_write32 (int,int ) ;

void loongson3_send_irq_by_ipi(int cpu, int irqs)
{
 loongson3_ipi_write32(irqs << IPI_IRQ_OFFSET, ipi_set0_regs[cpu_logical_map(cpu)]);
}
