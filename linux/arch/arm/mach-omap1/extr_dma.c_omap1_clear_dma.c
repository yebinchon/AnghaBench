
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CCR ;
 int CSR ;
 int OMAP_DMA_CCR_EN ;
 int dma_read (int ,int) ;
 int dma_write (int ,int ,int) ;

__attribute__((used)) static void omap1_clear_dma(int lch)
{
 u32 l;

 l = dma_read(CCR, lch);
 l &= ~OMAP_DMA_CCR_EN;
 dma_write(l, CCR, lch);


 l = dma_read(CSR, lch);
}
