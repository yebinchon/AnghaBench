
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct btmrvl_sdio_card {int rx_unit; TYPE_1__* reg; int func; } ;
struct TYPE_2__ {int card_rx_len; } ;


 scalar_t__ sdio_readb (int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_read_rx_len(struct btmrvl_sdio_card *card, u16 *dat)
{
 u8 reg;
 int ret;

 reg = sdio_readb(card->func, card->reg->card_rx_len, &ret);
 if (!ret)
  *dat = (u16) reg << card->rx_unit;

 return ret;
}
