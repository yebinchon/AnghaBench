
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_MODEL ;
 int PDC_MODEL_GET_PLATFORM_INFO ;
 int __pa (char*) ;
 int convert_to_wide (int ) ;
 int mem_pdc_call (int ,int ,int ,int ,int ) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_model_platform_info(char *orig_prod_num, char *current_prod_num,
  char *serial_no)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_MODEL, PDC_MODEL_GET_PLATFORM_INFO,
  __pa(orig_prod_num), __pa(current_prod_num), __pa(serial_no));
 convert_to_wide(pdc_result);
 spin_unlock_irqrestore(&pdc_lock, flags);

 return retval;
}
