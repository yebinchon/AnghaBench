
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_tod {int dummy; } ;


 int PDC_TOD ;
 int PDC_TOD_READ ;
 int __pa (int ) ;
 int convert_to_wide (int ) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int memcpy (struct pdc_tod*,int ,int) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_tod_read(struct pdc_tod *tod)
{
        int retval;
 unsigned long flags;

        spin_lock_irqsave(&pdc_lock, flags);
        retval = mem_pdc_call(PDC_TOD, PDC_TOD_READ, __pa(pdc_result), 0);
        convert_to_wide(pdc_result);
        memcpy(tod, pdc_result, sizeof(*tod));
        spin_unlock_irqrestore(&pdc_lock, flags);

        return retval;
}
