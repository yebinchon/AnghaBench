
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btmrvl_sdio_card {int func; TYPE_2__* reg; } ;
struct TYPE_3__ {struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
struct TYPE_4__ {int cfg; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int EINVAL ;
 int HOST_POWER_UP ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_wakeup_fw(struct btmrvl_private *priv)
{
 struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;
 int ret = 0;

 if (!card || !card->func) {
  BT_ERR("card or function is NULL!");
  return -EINVAL;
 }

 sdio_claim_host(card->func);

 sdio_writeb(card->func, HOST_POWER_UP, card->reg->cfg, &ret);

 sdio_release_host(card->func);

 BT_DBG("wake up firmware");

 return ret;
}
