
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SH_DMAC_BASE0 ;
 unsigned long SH_DMAC_BASE1 ;

__attribute__((used)) static unsigned long dma_find_base(unsigned int chan)
{
 unsigned long base = SH_DMAC_BASE0;






 return base;
}
