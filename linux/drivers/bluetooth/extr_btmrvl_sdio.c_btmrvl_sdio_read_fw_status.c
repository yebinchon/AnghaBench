
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct btmrvl_sdio_card {TYPE_1__* reg; int func; } ;
struct TYPE_2__ {int card_fw_status1; int card_fw_status0; } ;


 int EIO ;
 int sdio_readb (int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_read_fw_status(struct btmrvl_sdio_card *card, u16 *dat)
{
 u8 fws0, fws1;
 int ret;

 *dat = 0;

 fws0 = sdio_readb(card->func, card->reg->card_fw_status0, &ret);
 if (ret)
  return -EIO;

 fws1 = sdio_readb(card->func, card->reg->card_fw_status1, &ret);
 if (ret)
  return -EIO;

 *dat = (((u16) fws1) << 8) | fws0;

 return 0;
}
