
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
 int sdio_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_enable_host_int_mask(struct btmrvl_sdio_card *card,
        u8 mask)
{
 int ret;

 sdio_writeb(card->func, mask, card->reg->host_int_mask, &ret);
 if (ret) {
  BT_ERR("Unable to enable the host interrupt!");
  ret = -EIO;
 }

 return ret;
}
