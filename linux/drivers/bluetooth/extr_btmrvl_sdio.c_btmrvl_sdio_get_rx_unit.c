
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btmrvl_sdio_card {int rx_unit; TYPE_1__* reg; int func; } ;
struct TYPE_2__ {int card_rx_unit; } ;


 int sdio_readb (int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_get_rx_unit(struct btmrvl_sdio_card *card)
{
 u8 reg;
 int ret;

 reg = sdio_readb(card->func, card->reg->card_rx_unit, &ret);
 if (!ret)
  card->rx_unit = reg;

 return ret;
}
