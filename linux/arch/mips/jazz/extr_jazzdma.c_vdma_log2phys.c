
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long frame; } ;


 int VDMA_PAGESIZE ;
 TYPE_1__* pgtbl ;

unsigned long vdma_log2phys(unsigned long laddr)
{
 return pgtbl[laddr >> 12].frame + (laddr & (VDMA_PAGESIZE - 1));
}
