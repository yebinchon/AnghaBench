
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct btmrvl_sdio_card {TYPE_1__* reg; int func; TYPE_2__* priv; } ;
struct btmrvl_adapter {int * hw_regs; } ;
struct TYPE_4__ {struct btmrvl_adapter* adapter; } ;
struct TYPE_3__ {size_t host_intstatus; } ;


 int BT_DBG (char*,size_t,int ) ;
 int BT_ERR (char*,int) ;
 int SDIO_BLOCK_SIZE ;
 int sdio_readsb (int ,int *,int ,int ) ;

__attribute__((used)) static int btmrvl_sdio_read_to_clear(struct btmrvl_sdio_card *card, u8 *ireg)
{
 struct btmrvl_adapter *adapter = card->priv->adapter;
 int ret;

 ret = sdio_readsb(card->func, adapter->hw_regs, 0, SDIO_BLOCK_SIZE);
 if (ret) {
  BT_ERR("sdio_readsb: read int hw_regs failed: %d", ret);
  return ret;
 }

 *ireg = adapter->hw_regs[card->reg->host_intstatus];
 BT_DBG("hw_regs[%#x]=%#x", card->reg->host_intstatus, *ireg);

 return 0;
}
