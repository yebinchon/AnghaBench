
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct in_device* ip_ptr; } ;
struct in_ifaddr {int ifa_mask; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
typedef int __be32 ;



int dev_netmask(void *d, void *m)
{
 struct net_device *dev = d;
 struct in_device *ip = dev->ip_ptr;
 struct in_ifaddr *in;
 __be32 *mask_out = m;

 if (ip == ((void*)0))
  return 1;

 in = ip->ifa_list;
 if (in == ((void*)0))
  return 1;

 *mask_out = in->ifa_mask;
 return 0;
}
