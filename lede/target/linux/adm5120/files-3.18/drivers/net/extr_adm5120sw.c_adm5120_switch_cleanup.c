
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SWITCH_INTS_ALL ;
 int SWITCH_NUM_PORTS ;
 struct net_device** adm5120_devs ;
 int adm5120_switch_rx_ring_free () ;
 int adm5120_switch_tx_ring_free () ;
 int free_netdev (struct net_device*) ;
 int sw_int_mask (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void adm5120_switch_cleanup(void)
{
 int i;


 sw_int_mask(SWITCH_INTS_ALL);

 for (i = 0; i < SWITCH_NUM_PORTS; i++) {
  struct net_device *dev = adm5120_devs[i];
  if (dev) {
   unregister_netdev(dev);
   free_netdev(dev);
  }
 }

 adm5120_switch_tx_ring_free();
 adm5120_switch_rx_ring_free();
}
