
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TX_DESCS_SIZE ;
 int TX_RING_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (scalar_t__*) ;
 int kfree_skb (scalar_t__) ;
 scalar_t__ txl_descs ;
 int txl_descs_dma ;
 scalar_t__* txl_skbuff ;

__attribute__((used)) static void adm5120_switch_tx_ring_free(void)
{
 int i;

 if (txl_skbuff) {
  for (i = 0; i < TX_RING_SIZE; i++)
   if (txl_skbuff[i])
    kfree_skb(txl_skbuff[i]);
  kfree(txl_skbuff);
 }

 if (txl_descs)
  dma_free_coherent(((void*)0), TX_DESCS_SIZE, txl_descs,
   txl_descs_dma);
}
