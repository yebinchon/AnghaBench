
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_mem_retinfo {int dummy; } ;


 int PDC_MEM ;
 int PDC_MEM_MEMINFO ;
 int __pa (int ) ;
 int convert_to_wide (int ) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int memcpy (struct pdc_mem_retinfo*,int ,int) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_mem_pdt_info(struct pdc_mem_retinfo *rinfo)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_MEM, PDC_MEM_MEMINFO, __pa(pdc_result), 0);
 convert_to_wide(pdc_result);
 memcpy(rinfo, pdc_result, sizeof(*rinfo));
 spin_unlock_irqrestore(&pdc_lock, flags);

 return retval;
}
