
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int TX_DESCS_SIZE ;
 int TX_SKBS_SIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int kzalloc (int ,int ) ;
 int txl_descs ;
 int txl_descs_dma ;
 int txl_skbuff ;

__attribute__((used)) static int adm5120_switch_tx_ring_alloc(void)
{
 int err;

 txl_descs = dma_alloc_coherent(((void*)0), TX_DESCS_SIZE, &txl_descs_dma,
     GFP_ATOMIC);
 if (!txl_descs) {
  err = -ENOMEM;
  goto err;
 }

 txl_skbuff = kzalloc(TX_SKBS_SIZE, GFP_KERNEL);
 if (!txl_skbuff) {
  err = -ENOMEM;
  goto err;
 }

 return 0;

err:
 return err;
}
