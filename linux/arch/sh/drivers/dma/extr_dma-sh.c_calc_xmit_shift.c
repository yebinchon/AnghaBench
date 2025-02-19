
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_channel {int chan; } ;


 scalar_t__ CHCR ;
 int CHCR_TS_HIGH_MASK ;
 int CHCR_TS_HIGH_SHIFT ;
 int CHCR_TS_LOW_MASK ;
 int CHCR_TS_LOW_SHIFT ;
 int __raw_readl (scalar_t__) ;
 scalar_t__ dma_base_addr (int ) ;
 unsigned int* ts_shift ;

__attribute__((used)) static inline unsigned int calc_xmit_shift(struct dma_channel *chan)
{
 u32 chcr = __raw_readl(dma_base_addr(chan->chan) + CHCR);
 int cnt = ((chcr & CHCR_TS_LOW_MASK) >> CHCR_TS_LOW_SHIFT) |
  ((chcr & CHCR_TS_HIGH_MASK) >> CHCR_TS_HIGH_SHIFT);

 return ts_shift[cnt];
}
