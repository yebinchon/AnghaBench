
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct btmrvl_sdio_card {TYPE_1__* priv; } ;
struct TYPE_3__ {int surprise_removed; } ;


 int BT_DBG (char*) ;
 int MODULE_SHUTDOWN_REQ ;
 int btmrvl_remove_card (TYPE_1__*) ;
 int btmrvl_sdio_disable_host_int (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_unregister_dev (struct btmrvl_sdio_card*) ;
 int btmrvl_send_module_cfg_cmd (TYPE_1__*,int ) ;
 struct btmrvl_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 scalar_t__ user_rmmod ;

__attribute__((used)) static void btmrvl_sdio_remove(struct sdio_func *func)
{
 struct btmrvl_sdio_card *card;

 if (func) {
  card = sdio_get_drvdata(func);
  if (card) {



   if (user_rmmod) {
    btmrvl_send_module_cfg_cmd(card->priv,
       MODULE_SHUTDOWN_REQ);
    btmrvl_sdio_disable_host_int(card);
   }
   BT_DBG("unregister dev");
   card->priv->surprise_removed = 1;
   btmrvl_sdio_unregister_dev(card);
   btmrvl_remove_card(card->priv);
  }
 }
}
