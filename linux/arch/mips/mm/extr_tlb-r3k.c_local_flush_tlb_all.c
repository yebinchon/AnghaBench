
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_flush_tlb_from (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*) ;
 scalar_t__ r3k_have_wired_reg ;
 int read_c0_wired () ;

void local_flush_tlb_all(void)
{
 unsigned long flags;




 local_irq_save(flags);
 local_flush_tlb_from(r3k_have_wired_reg ? read_c0_wired() : 8);
 local_irq_restore(flags);
}
