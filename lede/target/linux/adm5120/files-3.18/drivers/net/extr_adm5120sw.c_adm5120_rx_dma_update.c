
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct dma_desc {int buf1; int buflen; scalar_t__ buf2; scalar_t__ misc; } ;


 int DESC_ADDR (int ) ;
 int DESC_EOR ;
 int DESC_OWN ;
 int RX_MAX_PKTLEN ;

__attribute__((used)) static inline void adm5120_rx_dma_update(struct dma_desc *desc,
 struct sk_buff *skb, int end)
{
 desc->misc = 0;
 desc->buf2 = 0;
 desc->buflen = RX_MAX_PKTLEN;
 desc->buf1 = DESC_ADDR(skb->data) |
  DESC_OWN | (end ? DESC_EOR : 0);
}
