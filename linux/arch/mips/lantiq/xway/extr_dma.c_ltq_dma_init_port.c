
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA_2W_BURST ;
 int DMA_ETOP_ENDIANNESS ;
 int DMA_PDEN ;


 int LTQ_DMA_PCTRL ;
 int LTQ_DMA_PS ;
 int ltq_dma_w32 (int,int ) ;
 int ltq_dma_w32_mask (int ,int,int ) ;

void
ltq_dma_init_port(int p)
{
 ltq_dma_w32(p, LTQ_DMA_PS);
 switch (p) {
 case 128:




  ltq_dma_w32_mask(0, DMA_ETOP_ENDIANNESS | DMA_PDEN,
   LTQ_DMA_PCTRL);
  break;

 case 129:
  ltq_dma_w32((DMA_2W_BURST << 4) | (DMA_2W_BURST << 2),
   LTQ_DMA_PCTRL);
  break;

 default:
  break;
 }
}
