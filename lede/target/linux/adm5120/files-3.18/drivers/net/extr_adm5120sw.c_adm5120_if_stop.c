
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int irq; } ;


 int SWITCH_INTS_USED ;
 int SWITCH_NUM_PORTS ;
 int SWITCH_PORTS_NOCPU ;
 int SWITCH_REG_PORT_CONF0 ;
 struct net_device** adm5120_devs ;
 int * adm5120_eth_vlans ;
 int adm5120_if_napi_disable (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sw_int_mask (int ) ;
 int sw_read_reg (int ) ;
 int sw_used ;
 int sw_write_reg (int ,int ) ;

__attribute__((used)) static int adm5120_if_stop(struct net_device *dev)
{
 u32 t;
 int i;

 netif_stop_queue(dev);
 adm5120_if_napi_disable(dev);


 t = sw_read_reg(SWITCH_REG_PORT_CONF0);
 t |= SWITCH_PORTS_NOCPU;
 for (i = 0; i < SWITCH_NUM_PORTS; i++) {
  if ((dev != adm5120_devs[i]) && netif_running(adm5120_devs[i]))
   t &= ~adm5120_eth_vlans[i];
 }
 sw_write_reg(SWITCH_REG_PORT_CONF0, t);

 if (!--sw_used)
  sw_int_mask(SWITCH_INTS_USED);

 free_irq(dev->irq, dev);

 return 0;
}
