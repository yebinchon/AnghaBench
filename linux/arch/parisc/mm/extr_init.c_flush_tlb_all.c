
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inc_irq_stat (int ) ;
 int flush_tlb_all_local (int *) ;
 int irq_tlb_count ;
 int recycle_sids () ;
 int sid_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void flush_tlb_all(void)
{
 __inc_irq_stat(irq_tlb_count);
 spin_lock(&sid_lock);
 flush_tlb_all_local(((void*)0));
 recycle_sids();
 spin_unlock(&sid_lock);
}
