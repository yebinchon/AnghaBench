
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_mem_read_pdt {int dummy; } ;


 int PDC_ERROR ;
 int PDC_MEM ;
 int PDC_MEM_READ_PDT ;
 int PDC_OK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __pa (unsigned long*) ;
 int convert_to_wide (unsigned long*) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int memcpy (struct pdc_mem_read_pdt*,unsigned long*,int) ;
 scalar_t__ parisc_narrow_firmware ;
 int pdc_lock ;
 unsigned long* pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_mem_pdt_read_entries(struct pdc_mem_read_pdt *pret,
  unsigned long *pdt_entries_ptr)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_MEM, PDC_MEM_READ_PDT, __pa(pdc_result),
   __pa(pdt_entries_ptr));
 if (retval == PDC_OK) {
  convert_to_wide(pdc_result);
  memcpy(pret, pdc_result, sizeof(*pret));
 }
 spin_unlock_irqrestore(&pdc_lock, flags);
 return retval;
}
