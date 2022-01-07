
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hsmode; scalar_t__ hscmd; scalar_t__ pscmd; scalar_t__ hscfgcmd; } ;
struct btmrvl_private {int (* hw_wakeup_firmware ) (struct btmrvl_private*) ;TYPE_1__* adapter; TYPE_2__ btmrvl_dev; } ;
struct TYPE_3__ {int hs_state; } ;


 int BT_DBG (char*) ;
 int HS_DEACTIVATED ;
 int btmrvl_enable_hs (struct btmrvl_private*) ;
 int btmrvl_enable_ps (struct btmrvl_private*) ;
 int btmrvl_send_hscfg_cmd (struct btmrvl_private*) ;
 int stub1 (struct btmrvl_private*) ;

int btmrvl_prepare_command(struct btmrvl_private *priv)
{
 int ret = 0;

 if (priv->btmrvl_dev.hscfgcmd) {
  priv->btmrvl_dev.hscfgcmd = 0;
  btmrvl_send_hscfg_cmd(priv);
 }

 if (priv->btmrvl_dev.pscmd) {
  priv->btmrvl_dev.pscmd = 0;
  btmrvl_enable_ps(priv);
 }

 if (priv->btmrvl_dev.hscmd) {
  priv->btmrvl_dev.hscmd = 0;

  if (priv->btmrvl_dev.hsmode) {
   ret = btmrvl_enable_hs(priv);
  } else {
   ret = priv->hw_wakeup_firmware(priv);
   priv->adapter->hs_state = HS_DEACTIVATED;
   BT_DBG("BT: HS DEACTIVATED due to host activity!");
  }
 }

 return ret;
}
