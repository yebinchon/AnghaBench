
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btmrvl_sdio_card {TYPE_1__* reg; int func; } ;
struct TYPE_2__ {int host_int_mask; } ;


 int BT_ERR (char*) ;
 int EIO ;
 int sdio_readb (int ,int ,int*) ;
 int sdio_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_disable_host_int_mask(struct btmrvl_sdio_card *card,
        u8 mask)
{
 u8 host_int_mask;
 int ret;

 host_int_mask = sdio_readb(card->func, card->reg->host_int_mask, &ret);
 if (ret)
  return -EIO;

 host_int_mask &= ~mask;

 sdio_writeb(card->func, host_int_mask, card->reg->host_int_mask, &ret);
 if (ret < 0) {
  BT_ERR("Unable to disable the host interrupt!");
  return -EIO;
 }

 return 0;
}
