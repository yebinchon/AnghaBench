
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_L1PIBAR ;
 int IMCR_L1PIWC ;
 int cache_block_operation (unsigned int*,unsigned int*,int ,int ) ;

void L1P_cache_block_invalidate(unsigned int start, unsigned int end)
{
 cache_block_operation((unsigned int *) start,
         (unsigned int *) end,
         IMCR_L1PIBAR, IMCR_L1PIWC);
}
