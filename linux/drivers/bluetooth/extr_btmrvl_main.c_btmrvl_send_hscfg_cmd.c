
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int gpio_gap; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;


 int BT_CMD_HOST_SLEEP_CONFIG ;
 int BT_DBG (char*,int,int) ;
 int BT_ERR (char*) ;
 int btmrvl_send_sync_cmd (struct btmrvl_private*,int ,int*,int) ;

int btmrvl_send_hscfg_cmd(struct btmrvl_private *priv)
{
 int ret;
 u8 param[2];

 param[0] = (priv->btmrvl_dev.gpio_gap & 0xff00) >> 8;
 param[1] = (u8) (priv->btmrvl_dev.gpio_gap & 0x00ff);

 BT_DBG("Sending HSCFG Command, gpio=0x%x, gap=0x%x",
        param[0], param[1]);

 ret = btmrvl_send_sync_cmd(priv, BT_CMD_HOST_SLEEP_CONFIG, param, 2);
 if (ret)
  BT_ERR("HSCFG command failed");

 return ret;
}
