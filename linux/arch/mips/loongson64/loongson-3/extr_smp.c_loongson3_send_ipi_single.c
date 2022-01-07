
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t cpu_logical_map (int) ;
 int * ipi_set0_regs ;
 int loongson3_ipi_write32 (int ,int ) ;

__attribute__((used)) static void loongson3_send_ipi_single(int cpu, unsigned int action)
{
 loongson3_ipi_write32((u32)action, ipi_set0_regs[cpu_logical_map(cpu)]);
}
