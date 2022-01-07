
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_btlb_info {scalar_t__ max_size; } ;


 int PDC_BLOCK_TLB ;
 int PDC_BTLB_INFO ;
 int __pa (int ) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int memcpy (struct pdc_btlb_info*,int ,int) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_btlb_info(struct pdc_btlb_info *btlb)
{
        int retval;
 unsigned long flags;

        spin_lock_irqsave(&pdc_lock, flags);
        retval = mem_pdc_call(PDC_BLOCK_TLB, PDC_BTLB_INFO, __pa(pdc_result), 0);
        memcpy(btlb, pdc_result, sizeof(*btlb));
        spin_unlock_irqrestore(&pdc_lock, flags);

        if(retval < 0) {
                btlb->max_size = 0;
        }
        return retval;
}
