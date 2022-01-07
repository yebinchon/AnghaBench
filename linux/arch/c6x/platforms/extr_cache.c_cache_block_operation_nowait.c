
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2_CACHE_ALIGN_CNT (unsigned int) ;
 unsigned int L2_CACHE_ALIGN_LOW (unsigned int) ;
 int cache_block_operation_wait (unsigned int) ;
 int cache_lock ;
 int imcr_set (unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cache_block_operation_nowait(unsigned int *start,
      unsigned int *end,
      unsigned int bar_reg,
      unsigned int wc_reg)
{
 unsigned long flags;
 unsigned int wcnt =
  (L2_CACHE_ALIGN_CNT((unsigned int) end)
   - L2_CACHE_ALIGN_LOW((unsigned int) start)) >> 2;
 unsigned int wc = 0;

 for (; wcnt; wcnt -= wc, start += wc) {

  spin_lock_irqsave(&cache_lock, flags);

  imcr_set(bar_reg, L2_CACHE_ALIGN_LOW((unsigned int) start));

  if (wcnt > 0xffff)
   wc = 0xffff;
  else
   wc = wcnt;


  imcr_set(wc_reg, wc & 0xffff);

  spin_unlock_irqrestore(&cache_lock, flags);


  if (wcnt > 0xffff)
   cache_block_operation_wait(wc_reg);
 }
}
