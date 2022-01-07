
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int protocol; int ip_summed; struct net_device* dev; } ;
struct net_device_stats {unsigned int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {int features; int dev; struct net_device_stats stats; } ;
struct napi_struct {int dummy; } ;
struct fe_soc_data {int checksum_bit; } ;
struct fe_rx_ring {int rx_calc_idx; int rx_buf_size; int ** rx_data; int frag_size; int frag_cache; struct fe_rx_dma* rx_dma; } ;
struct fe_rx_dma {int rxd2; unsigned int rxd1; int rxd4; int rxd3; } ;
struct fe_priv {int flags; struct fe_rx_ring rx_ring; struct fe_soc_data* soc; struct net_device* netdev; } ;
typedef scalar_t__ dma_addr_t ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int ETH_P_8021Q ;
 int FE_FLAG_RX_2B_OFFSET ;
 int FE_FLAG_RX_SG_DMA ;
 int FE_REG_FE_INT_STATUS ;
 int FE_REG_RX_CALC_IDX0 ;
 int GFP_ATOMIC ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int NET_IP_ALIGN ;
 int NET_SKB_PAD ;
 int NEXT_RX_DESP_IDX (int) ;
 int RX_DMA_DONE ;
 unsigned int RX_DMA_GET_PLEN0 (int) ;
 int RX_DMA_LSO ;
 int RX_DMA_PLEN0 (int ) ;
 scalar_t__ RX_DMA_VID (int ) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* build_skb (int *,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_map_single (int *,int *,int ,int ) ;
 int dma_mapping_error (int *,scalar_t__) ;
 int dma_unmap_single (int *,unsigned int,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int fe_get_rxd (struct fe_rx_dma*,struct fe_rx_dma*) ;
 int fe_reg_w32 (int,int ) ;
 int htons (int ) ;
 scalar_t__ mtk_offload_check_rx (struct fe_priv*,struct sk_buff*,int) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int * page_frag_alloc (int *,int ,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_free_frag (int *) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int fe_poll_rx(struct napi_struct *napi, int budget,
        struct fe_priv *priv, u32 rx_intr)
{
 struct net_device *netdev = priv->netdev;
 struct net_device_stats *stats = &netdev->stats;
 struct fe_soc_data *soc = priv->soc;
 struct fe_rx_ring *ring = &priv->rx_ring;
 int idx = ring->rx_calc_idx;
 u32 checksum_bit;
 struct sk_buff *skb;
 u8 *data, *new_data;
 struct fe_rx_dma *rxd, trxd;
 int done = 0, pad;

 if (netdev->features & NETIF_F_RXCSUM)
  checksum_bit = soc->checksum_bit;
 else
  checksum_bit = 0;

 if (priv->flags & FE_FLAG_RX_2B_OFFSET)
  pad = 0;
 else
  pad = NET_IP_ALIGN;

 while (done < budget) {
  unsigned int pktlen;
  dma_addr_t dma_addr;

  idx = NEXT_RX_DESP_IDX(idx);
  rxd = &ring->rx_dma[idx];
  data = ring->rx_data[idx];

  fe_get_rxd(&trxd, rxd);
  if (!(trxd.rxd2 & RX_DMA_DONE))
   break;


  new_data = page_frag_alloc(&ring->frag_cache, ring->frag_size,
        GFP_ATOMIC);
  if (unlikely(!new_data)) {
   stats->rx_dropped++;
   goto release_desc;
  }
  dma_addr = dma_map_single(&netdev->dev,
       new_data + NET_SKB_PAD + pad,
       ring->rx_buf_size,
       DMA_FROM_DEVICE);
  if (unlikely(dma_mapping_error(&netdev->dev, dma_addr))) {
   skb_free_frag(new_data);
   goto release_desc;
  }


  skb = build_skb(data, ring->frag_size);
  if (unlikely(!skb)) {
   skb_free_frag(new_data);
   goto release_desc;
  }
  skb_reserve(skb, NET_SKB_PAD + NET_IP_ALIGN);

  dma_unmap_single(&netdev->dev, trxd.rxd1,
     ring->rx_buf_size, DMA_FROM_DEVICE);
  pktlen = RX_DMA_GET_PLEN0(trxd.rxd2);
  skb->dev = netdev;
  skb_put(skb, pktlen);
  if (trxd.rxd4 & checksum_bit)
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  else
   skb_checksum_none_assert(skb);
  skb->protocol = eth_type_trans(skb, netdev);

  if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX &&
      RX_DMA_VID(trxd.rxd3))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            RX_DMA_VID(trxd.rxd3));




   stats->rx_packets++;
   stats->rx_bytes += pktlen;

   napi_gro_receive(napi, skb);





  ring->rx_data[idx] = new_data;
  rxd->rxd1 = (unsigned int)dma_addr;

release_desc:
  if (priv->flags & FE_FLAG_RX_SG_DMA)
   rxd->rxd2 = RX_DMA_PLEN0(ring->rx_buf_size);
  else
   rxd->rxd2 = RX_DMA_LSO;

  ring->rx_calc_idx = idx;



  wmb();
  fe_reg_w32(ring->rx_calc_idx, FE_REG_RX_CALC_IDX0);
  done++;
 }

 if (done < budget)
  fe_reg_w32(rx_intr, FE_REG_FE_INT_STATUS);

 return done;
}
