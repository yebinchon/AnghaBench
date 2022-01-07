
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int local_irq_enable () ;
 int mips_hpt_frequency ;
 scalar_t__ read_c0_count () ;
 int write_c0_compare (scalar_t__) ;

__attribute__((used)) static void paravirt_smp_finish(void)
{

 write_c0_compare(read_c0_count() + mips_hpt_frequency / HZ);
 local_irq_enable();
}
