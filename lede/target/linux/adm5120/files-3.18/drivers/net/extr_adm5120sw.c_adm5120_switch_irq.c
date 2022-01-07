
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; } ;
struct adm5120_if_priv {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RX_RING_SIZE ;
 int SWITCH_INTS_ALL ;
 int SWITCH_INTS_POLL ;
 int SWITCH_INT_LDF ;
 int SWITCH_INT_RLD ;
 int SWITCH_INT_SLD ;
 int SW_DBG (char*,int ) ;
 int adm5120_switch_rx (int ) ;
 int adm5120_switch_tx () ;
 int napi_schedule (int *) ;
 struct adm5120_if_priv* netdev_priv (struct net_device*) ;
 int sw_dump_intr_mask (char*,int) ;
 int sw_int_ack (int) ;
 int sw_int_mask (int) ;
 int sw_int_status () ;

__attribute__((used)) static irqreturn_t adm5120_switch_irq(int irq, void *dev_id)
{
 u32 status;

 status = sw_int_status();
 status &= SWITCH_INTS_ALL;
 if (!status)
  return IRQ_NONE;
 sw_int_ack(status);

 if (status & (SWITCH_INT_RLD | SWITCH_INT_LDF))
  adm5120_switch_rx(RX_RING_SIZE);

 if (status & SWITCH_INT_SLD)
  adm5120_switch_tx();


 return IRQ_HANDLED;
}
