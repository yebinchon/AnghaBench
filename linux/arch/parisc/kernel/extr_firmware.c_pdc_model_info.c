
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_model {int dummy; } ;


 int PDC_MODEL ;
 int PDC_MODEL_INFO ;
 int __pa (int ) ;
 int convert_to_wide (int ) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int memcpy (struct pdc_model*,int ,int) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_model_info(struct pdc_model *model)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_MODEL, PDC_MODEL_INFO, __pa(pdc_result), 0);
 convert_to_wide(pdc_result);
 memcpy(model, pdc_result, sizeof(*model));
 spin_unlock_irqrestore(&pdc_lock, flags);

 return retval;
}
