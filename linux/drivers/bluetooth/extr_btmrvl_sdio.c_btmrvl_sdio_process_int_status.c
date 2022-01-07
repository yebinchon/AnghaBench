
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
struct btmrvl_sdio_card {int func; } ;
struct TYPE_2__ {int tx_dnld_rdy; struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; int driver_lock; } ;


 int BT_DBG (char*,int) ;
 int DN_LD_HOST_INT_STATUS ;
 int UP_LD_HOST_INT_STATUS ;
 int btmrvl_sdio_card_to_host (struct btmrvl_private*) ;
 int sdio_claim_host (int ) ;
 int sdio_ireg ;
 int sdio_release_host (int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int btmrvl_sdio_process_int_status(struct btmrvl_private *priv)
{
 ulong flags;
 u8 ireg;
 struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;

 spin_lock_irqsave(&priv->driver_lock, flags);
 ireg = sdio_ireg;
 sdio_ireg = 0;
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 sdio_claim_host(card->func);
 if (ireg & DN_LD_HOST_INT_STATUS) {
  if (priv->btmrvl_dev.tx_dnld_rdy)
   BT_DBG("tx_done already received: "
    " int_status=0x%x", ireg);
  else
   priv->btmrvl_dev.tx_dnld_rdy = 1;
 }

 if (ireg & UP_LD_HOST_INT_STATUS)
  btmrvl_sdio_card_to_host(priv);

 sdio_release_host(card->func);

 return 0;
}
