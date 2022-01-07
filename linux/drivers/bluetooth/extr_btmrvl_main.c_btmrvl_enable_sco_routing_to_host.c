
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btmrvl_private {int dummy; } ;


 int BT_CMD_ROUTE_SCO_TO_HOST ;
 int BT_ERR (char*,int) ;
 int btmrvl_send_sync_cmd (struct btmrvl_private*,int ,int *,int) ;

__attribute__((used)) static int btmrvl_enable_sco_routing_to_host(struct btmrvl_private *priv)
{
 int ret;
 u8 subcmd = 0;

 ret = btmrvl_send_sync_cmd(priv, BT_CMD_ROUTE_SCO_TO_HOST, &subcmd, 1);
 if (ret)
  BT_ERR("BT_CMD_ROUTE_SCO_TO_HOST command failed: %#x", ret);

 return ret;
}
