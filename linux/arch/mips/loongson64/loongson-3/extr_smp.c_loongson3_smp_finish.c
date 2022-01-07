
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 size_t cpu_logical_map (int) ;
 scalar_t__* ipi_mailbox_buf ;
 int local_irq_enable () ;
 int loongson3_ipi_write64 (int ,scalar_t__) ;
 int mips_hpt_frequency ;
 int pr_info (char*,int,int ) ;
 scalar_t__ read_c0_count () ;
 int read_c0_status () ;
 int smp_processor_id () ;
 int write_c0_compare (scalar_t__) ;

__attribute__((used)) static void loongson3_smp_finish(void)
{
 int cpu = smp_processor_id();

 write_c0_compare(read_c0_count() + mips_hpt_frequency/HZ);
 local_irq_enable();
 loongson3_ipi_write64(0,
   ipi_mailbox_buf[cpu_logical_map(cpu)] + 0x0);
 pr_info("CPU#%d finished, CP0_ST=%x\n",
   smp_processor_id(), read_c0_status());
}
