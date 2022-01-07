
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int event_hs_wait_q; int cmd_wait_q; int * hw_regs; int hw_regs_buf; int ps_state; int tx_queue; } ;


 scalar_t__ ALIGN_ADDR (int ,int ) ;
 int ALIGN_SZ (int ,int ) ;
 int BTSDIO_DMA_ALIGN ;
 int BT_DBG (char*,int ,int *) ;
 int BT_ERR (char*) ;
 int GFP_KERNEL ;
 int PS_AWAKE ;
 int SDIO_BLOCK_SIZE ;
 int init_waitqueue_head (int *) ;
 int kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void btmrvl_init_adapter(struct btmrvl_private *priv)
{
 int buf_size;

 skb_queue_head_init(&priv->adapter->tx_queue);

 priv->adapter->ps_state = PS_AWAKE;

 buf_size = ALIGN_SZ(SDIO_BLOCK_SIZE, BTSDIO_DMA_ALIGN);
 priv->adapter->hw_regs_buf = kzalloc(buf_size, GFP_KERNEL);
 if (!priv->adapter->hw_regs_buf) {
  priv->adapter->hw_regs = ((void*)0);
  BT_ERR("Unable to allocate buffer for hw_regs.");
 } else {
  priv->adapter->hw_regs =
   (u8 *)ALIGN_ADDR(priv->adapter->hw_regs_buf,
      BTSDIO_DMA_ALIGN);
  BT_DBG("hw_regs_buf=%p hw_regs=%p",
         priv->adapter->hw_regs_buf, priv->adapter->hw_regs);
 }

 init_waitqueue_head(&priv->adapter->cmd_wait_q);
 init_waitqueue_head(&priv->adapter->event_hs_wait_q);
}
