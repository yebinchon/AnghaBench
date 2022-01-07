
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; int irq; } ;


 int IRQF_SHARED ;
 int SWITCH_INTS_USED ;
 int SWITCH_NUM_PORTS ;
 int SWITCH_REG_PORT_CONF0 ;
 int SW_ERR (char*,int ) ;
 struct net_device** adm5120_devs ;
 int * adm5120_eth_vlans ;
 int adm5120_if_napi_disable (struct net_device*) ;
 int adm5120_if_napi_enable (struct net_device*) ;
 int adm5120_switch_irq ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int sw_int_unmask (int ) ;
 int sw_read_reg (int ) ;
 int sw_used ;
 int sw_write_reg (int ,int ) ;

__attribute__((used)) static int adm5120_if_open(struct net_device *dev)
{
 u32 t;
 int err;
 int i;

 adm5120_if_napi_enable(dev);

 err = request_irq(dev->irq, adm5120_switch_irq, IRQF_SHARED,
     dev->name, dev);
 if (err) {
  SW_ERR("unable to get irq for %s\n", dev->name);
  goto err;
 }

 if (!sw_used++)

  sw_int_unmask(SWITCH_INTS_USED);


 t = sw_read_reg(SWITCH_REG_PORT_CONF0);
 for (i = 0; i < SWITCH_NUM_PORTS; i++) {
  if (dev == adm5120_devs[i])
   t &= ~adm5120_eth_vlans[i];
 }
 sw_write_reg(SWITCH_REG_PORT_CONF0, t);

 netif_start_queue(dev);

 return 0;

err:
 adm5120_if_napi_disable(dev);
 return err;
}
