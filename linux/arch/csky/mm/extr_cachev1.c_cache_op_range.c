
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CACHE_CLR ;
 unsigned int CACHE_OMS ;
 int CCR2_L2E ;
 int L1_CACHE_BYTES ;
 unsigned int LOWMEM_LIMIT ;
 unsigned int PAGE_OFFSET ;
 unsigned int PAGE_SIZE ;
 int cache_lock ;
 int cache_op_all (unsigned int,unsigned int) ;
 int cache_op_line (unsigned long,unsigned int) ;
 int mb () ;
 int mfcr_ccr2 () ;
 int mtcr (char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cache_op_range(
 unsigned int start,
 unsigned int end,
 unsigned int value,
 unsigned int l2)
{
 unsigned long i, flags;
 unsigned int val = value | CACHE_CLR | CACHE_OMS;
 bool l2_sync;

 if (unlikely((end - start) >= PAGE_SIZE) ||
     unlikely(start < PAGE_OFFSET) ||
     unlikely(start >= PAGE_OFFSET + LOWMEM_LIMIT)) {
  cache_op_all(value, l2);
  return;
 }

 if ((mfcr_ccr2() & CCR2_L2E) && l2)
  l2_sync = 1;
 else
  l2_sync = 0;

 spin_lock_irqsave(&cache_lock, flags);

 i = start & ~(L1_CACHE_BYTES - 1);
 for (; i < end; i += L1_CACHE_BYTES) {
  cache_op_line(i, val);
  if (l2_sync) {
   mb();
   mtcr("cr24", val);
  }
 }
 spin_unlock_irqrestore(&cache_lock, flags);

 mb();
}
