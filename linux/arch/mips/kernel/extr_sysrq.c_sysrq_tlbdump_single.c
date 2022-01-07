
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_tlb_all () ;
 int dump_tlb_regs () ;
 int pr_info (char*,...) ;
 int show_lock ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sysrq_tlbdump_single(void *dummy)
{
 unsigned long flags;

 spin_lock_irqsave(&show_lock, flags);

 pr_info("CPU%d:\n", smp_processor_id());
 dump_tlb_regs();
 pr_info("\n");
 dump_tlb_all();
 pr_info("\n");

 spin_unlock_irqrestore(&show_lock, flags);
}
