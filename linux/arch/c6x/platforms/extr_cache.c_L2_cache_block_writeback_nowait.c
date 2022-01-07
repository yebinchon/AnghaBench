
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_L2WBAR ;
 int IMCR_L2WWC ;
 int cache_block_operation_nowait (unsigned int*,unsigned int*,int ,int ) ;

void L2_cache_block_writeback_nowait(unsigned int start, unsigned int end)
{
 cache_block_operation_nowait((unsigned int *) start,
         (unsigned int *) end,
         IMCR_L2WBAR, IMCR_L2WWC);
}
