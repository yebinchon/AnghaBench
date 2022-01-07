
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_tlb_all () ;
 int dump_tlb_regs () ;
 int kvm_info (char*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_info (char*) ;

void kvm_mips_dump_host_tlbs(void)
{
 unsigned long flags;

 local_irq_save(flags);

 kvm_info("HOST TLBs:\n");
 dump_tlb_regs();
 pr_info("\n");
 dump_tlb_all();

 local_irq_restore(flags);
}
