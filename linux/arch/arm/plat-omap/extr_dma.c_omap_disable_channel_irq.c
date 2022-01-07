
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dma_write ) (int ,int ,int) ;int (* dma_read ) (int ,int) ;} ;


 int CICR ;
 int CSR ;
 int OMAP2_DMA_CSR_CLEAR_MASK ;
 scalar_t__ dma_omap1 () ;
 TYPE_1__* p ;
 int stub1 (int ,int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int ,int) ;

__attribute__((used)) static inline void omap_disable_channel_irq(int lch)
{

 p->dma_write(0, CICR, lch);

 if (dma_omap1())
  p->dma_read(CSR, lch);
 else
  p->dma_write(OMAP2_DMA_CSR_CLEAR_MASK, CSR, lch);
}
