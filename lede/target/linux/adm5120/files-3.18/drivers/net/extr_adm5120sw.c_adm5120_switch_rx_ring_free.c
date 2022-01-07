
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RX_DESCS_SIZE ;
 int RX_RING_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (scalar_t__*) ;
 int kfree_skb (scalar_t__) ;
 scalar_t__ rxl_descs ;
 int rxl_descs_dma ;
 scalar_t__* rxl_skbuff ;

__attribute__((used)) static void adm5120_switch_rx_ring_free(void)
{
 int i;

 if (rxl_skbuff) {
  for (i = 0; i < RX_RING_SIZE; i++)
   if (rxl_skbuff[i])
    kfree_skb(rxl_skbuff[i]);
  kfree(rxl_skbuff);
 }

 if (rxl_descs)
  dma_free_coherent(((void*)0), RX_DESCS_SIZE, rxl_descs,
   rxl_descs_dma);
}
