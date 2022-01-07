
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ psmode; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;


 int BT_CMD_AUTO_SLEEP_MODE ;
 int BT_ERR (char*) ;
 int BT_PS_DISABLE ;
 int BT_PS_ENABLE ;
 int btmrvl_send_sync_cmd (struct btmrvl_private*,int ,int *,int) ;

int btmrvl_enable_ps(struct btmrvl_private *priv)
{
 int ret;
 u8 param;

 if (priv->btmrvl_dev.psmode)
  param = BT_PS_ENABLE;
 else
  param = BT_PS_DISABLE;

 ret = btmrvl_send_sync_cmd(priv, BT_CMD_AUTO_SLEEP_MODE, &param, 1);
 if (ret)
  BT_ERR("PSMODE command failed");

 return 0;
}
