
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_CLR ;
 int CACHE_INV ;
 int DATA_CACHE ;
 int cache_op_range (unsigned long,unsigned long,int,int) ;

void dma_wb_range(unsigned long start, unsigned long end)
{
 cache_op_range(start, end, DATA_CACHE|CACHE_CLR|CACHE_INV, 1);
}
