
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_STABLE ;
 int PDC_STABLE_WRITE ;
 int __pa (int ) ;
 int convert_to_wide (int ) ;
 int mem_pdc_call (int ,int ,unsigned long,int ,unsigned long) ;
 int memcpy (int ,void*,unsigned long) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_stable_write(unsigned long staddr, void *memaddr, unsigned long count)
{
       int retval;
 unsigned long flags;

       spin_lock_irqsave(&pdc_lock, flags);
       memcpy(pdc_result, memaddr, count);
       convert_to_wide(pdc_result);
       retval = mem_pdc_call(PDC_STABLE, PDC_STABLE_WRITE, staddr,
               __pa(pdc_result), count);
       spin_unlock_irqrestore(&pdc_lock, flags);

       return retval;
}
