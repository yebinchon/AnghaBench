
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
struct sdio_func {int dummy; } ;
struct btmrvl_sdio_card {TYPE_1__* reg; struct btmrvl_private* priv; } ;
struct btmrvl_private {int driver_lock; scalar_t__ surprise_removed; } ;
struct TYPE_2__ {scalar_t__ int_read_to_clear; } ;


 int BT_ERR (char*,struct sdio_func*,struct btmrvl_sdio_card*) ;
 int btmrvl_interrupt (struct btmrvl_private*) ;
 int btmrvl_sdio_read_to_clear (struct btmrvl_sdio_card*,int *) ;
 int btmrvl_sdio_write_to_clear (struct btmrvl_sdio_card*,int *) ;
 struct btmrvl_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_ireg ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void btmrvl_sdio_interrupt(struct sdio_func *func)
{
 struct btmrvl_private *priv;
 struct btmrvl_sdio_card *card;
 ulong flags;
 u8 ireg = 0;
 int ret;

 card = sdio_get_drvdata(func);
 if (!card || !card->priv) {
  BT_ERR("sbi_interrupt(%p) card or priv is NULL, card=%p",
         func, card);
  return;
 }

 priv = card->priv;

 if (priv->surprise_removed)
  return;

 if (card->reg->int_read_to_clear)
  ret = btmrvl_sdio_read_to_clear(card, &ireg);
 else
  ret = btmrvl_sdio_write_to_clear(card, &ireg);

 if (ret)
  return;

 spin_lock_irqsave(&priv->driver_lock, flags);
 sdio_ireg |= ireg;
 spin_unlock_irqrestore(&priv->driver_lock, flags);

 btmrvl_interrupt(priv);
}
