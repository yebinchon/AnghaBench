
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_PCI_GET_INT_TBL_SIZE ;
 int PDC_PCI_INDEX ;
 int __pa (unsigned long*) ;
 int convert_to_wide (unsigned long*) ;
 int mem_pdc_call (int ,int ,int ,unsigned long) ;
 int pdc_lock ;
 unsigned long* pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_pci_irt_size(unsigned long *num_entries, unsigned long hpa)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_PCI_INDEX, PDC_PCI_GET_INT_TBL_SIZE,
         __pa(pdc_result), hpa);
 convert_to_wide(pdc_result);
 *num_entries = pdc_result[0];
 spin_unlock_irqrestore(&pdc_lock, flags);

 return retval;
}
