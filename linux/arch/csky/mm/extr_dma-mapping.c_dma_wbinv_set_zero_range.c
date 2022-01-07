
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_wbinv_range (unsigned long,unsigned long) ;
 int memset (void*,int ,unsigned long) ;

__attribute__((used)) static void dma_wbinv_set_zero_range(unsigned long start, unsigned long end)
{
 memset((void *)start, 0, end - start);
 dma_wbinv_range(start, end);
}
