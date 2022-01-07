
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_K6_EPMR ;
 int POWERNOW_IOPORT ;
 unsigned long X86_CR0_CD ;
 int* index_to_register ;
 unsigned long inl (int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int outl (unsigned long,int) ;
 unsigned long read_cr0 () ;
 int wbinvd () ;
 int write_cr0 (unsigned long) ;
 int wrmsr (int ,unsigned long,int ) ;

__attribute__((used)) static void powernow_k6_set_cpu_multiplier(unsigned int best_i)
{
 unsigned long outvalue, invalue;
 unsigned long msrval;
 unsigned long cr0;







 local_irq_disable();
 cr0 = read_cr0();
 write_cr0(cr0 | X86_CR0_CD);
 wbinvd();

 outvalue = (1<<12) | (1<<10) | (1<<9) | (index_to_register[best_i]<<5);

 msrval = POWERNOW_IOPORT + 0x1;
 wrmsr(MSR_K6_EPMR, msrval, 0);
 invalue = inl(POWERNOW_IOPORT + 0x8);
 invalue = invalue & 0x1f;
 outvalue = outvalue | invalue;
 outl(outvalue, (POWERNOW_IOPORT + 0x8));
 msrval = POWERNOW_IOPORT + 0x0;
 wrmsr(MSR_K6_EPMR, msrval, 0);

 write_cr0(cr0);
 local_irq_enable();
}
