
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btmrvl_private {int dummy; } ;


 int BT_CMD_MODULE_CFG_REQ ;
 int BT_ERR (char*,int ) ;
 int btmrvl_send_sync_cmd (struct btmrvl_private*,int ,int *,int) ;

int btmrvl_send_module_cfg_cmd(struct btmrvl_private *priv, u8 subcmd)
{
 int ret;

 ret = btmrvl_send_sync_cmd(priv, BT_CMD_MODULE_CFG_REQ, &subcmd, 1);
 if (ret)
  BT_ERR("module_cfg_cmd(%x) failed", subcmd);

 return ret;
}
