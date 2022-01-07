
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_MODEL ;
 int PDC_MODEL_CPU_ID ;
 int __pa (unsigned long*) ;
 int convert_to_wide (unsigned long*) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int pdc_lock ;
 unsigned long* pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_model_cpuid(unsigned long *cpu_id)
{
        int retval;
 unsigned long flags;

        spin_lock_irqsave(&pdc_lock, flags);
        pdc_result[0] = 0;
        retval = mem_pdc_call(PDC_MODEL, PDC_MODEL_CPU_ID, __pa(pdc_result), 0);
        convert_to_wide(pdc_result);
        *cpu_id = pdc_result[0];
        spin_unlock_irqrestore(&pdc_lock, flags);

        return retval;
}
