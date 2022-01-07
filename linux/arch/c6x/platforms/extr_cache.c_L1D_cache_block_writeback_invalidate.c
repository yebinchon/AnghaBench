
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_L1DWIBAR ;
 int IMCR_L1DWIWC ;
 int cache_block_operation (unsigned int*,unsigned int*,int ,int ) ;

void L1D_cache_block_writeback_invalidate(unsigned int start, unsigned int end)
{
 cache_block_operation((unsigned int *) start,
         (unsigned int *) end,
         IMCR_L1DWIBAR, IMCR_L1DWIWC);
}
