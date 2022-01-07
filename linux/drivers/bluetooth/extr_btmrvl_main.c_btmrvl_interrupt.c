
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait_q; } ;
struct btmrvl_private {TYPE_1__ main_thread; TYPE_2__* adapter; } ;
struct TYPE_4__ {scalar_t__ hs_state; int int_count; scalar_t__ wakeup_tries; int ps_state; } ;


 int BT_DBG (char*) ;
 scalar_t__ HS_ACTIVATED ;
 scalar_t__ HS_DEACTIVATED ;
 int PS_AWAKE ;
 int wake_up_interruptible (int *) ;

void btmrvl_interrupt(struct btmrvl_private *priv)
{
 priv->adapter->ps_state = PS_AWAKE;

 priv->adapter->wakeup_tries = 0;

 priv->adapter->int_count++;

 if (priv->adapter->hs_state == HS_ACTIVATED) {
  BT_DBG("BT: HS DEACTIVATED in ISR!");
  priv->adapter->hs_state = HS_DEACTIVATED;
 }

 wake_up_interruptible(&priv->main_thread.wait_q);
}
