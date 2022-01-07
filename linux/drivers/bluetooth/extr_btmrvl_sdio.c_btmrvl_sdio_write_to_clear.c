
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btmrvl_sdio_card {TYPE_1__* reg; int func; } ;
struct TYPE_2__ {int host_intstatus; } ;


 int BT_DBG (char*,int) ;
 int BT_ERR (char*,int) ;
 int DN_LD_HOST_INT_STATUS ;
 int UP_LD_HOST_INT_STATUS ;
 int sdio_readb (int ,int ,int*) ;
 int sdio_writeb (int ,int,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_write_to_clear(struct btmrvl_sdio_card *card, u8 *ireg)
{
 int ret;

 *ireg = sdio_readb(card->func, card->reg->host_intstatus, &ret);
 if (ret) {
  BT_ERR("sdio_readb: read int status failed: %d", ret);
  return ret;
 }

 if (*ireg) {





  BT_DBG("int_status = 0x%x", *ireg);

  sdio_writeb(card->func, ~(*ireg) & (DN_LD_HOST_INT_STATUS |
          UP_LD_HOST_INT_STATUS),
       card->reg->host_intstatus, &ret);
  if (ret) {
   BT_ERR("sdio_writeb: clear int status failed: %d", ret);
   return ret;
  }
 }

 return 0;
}
