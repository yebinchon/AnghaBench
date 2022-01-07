
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dma_read ) (int ,int) ;} ;


 int CCR ;
 int OMAP_DMA_CCR_EN ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;

int omap_get_dma_active_status(int lch)
{
 return (p->dma_read(CCR, lch) & OMAP_DMA_CCR_EN) != 0;
}
