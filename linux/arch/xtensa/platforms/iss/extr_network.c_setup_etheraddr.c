
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char* dev_addr; int name; } ;


 int eth_hw_addr_random (struct net_device*) ;
 int is_local_ether_addr (unsigned char*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char*) ;
 int is_valid_ether_addr (unsigned char*) ;
 int mac_pton (char*,unsigned char*) ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static void setup_etheraddr(struct net_device *dev, char *str)
{
 unsigned char *addr = dev->dev_addr;

 if (str == ((void*)0))
  goto random;

 if (!mac_pton(str, addr)) {
  pr_err("%s: failed to parse '%s' as an ethernet address\n",
         dev->name, str);
  goto random;
 }
 if (is_multicast_ether_addr(addr)) {
  pr_err("%s: attempt to assign a multicast ethernet address\n",
         dev->name);
  goto random;
 }
 if (!is_valid_ether_addr(addr)) {
  pr_err("%s: attempt to assign an invalid ethernet address\n",
         dev->name);
  goto random;
 }
 if (!is_local_ether_addr(addr))
  pr_warn("%s: assigning a globally valid ethernet address\n",
   dev->name);
 return;

random:
 pr_info("%s: choosing a random ethernet address\n",
  dev->name);
 eth_hw_addr_random(dev);
}
