
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_STABLE ;
 int PDC_STABLE_RETURN_SIZE ;
 int __pa (unsigned long*) ;
 int mem_pdc_call (int ,int ,int ) ;
 int pdc_lock ;
 unsigned long* pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_stable_get_size(unsigned long *size)
{
       int retval;
 unsigned long flags;

       spin_lock_irqsave(&pdc_lock, flags);
       retval = mem_pdc_call(PDC_STABLE, PDC_STABLE_RETURN_SIZE, __pa(pdc_result));
       *size = pdc_result[0];
       spin_unlock_irqrestore(&pdc_lock, flags);

       return retval;
}
