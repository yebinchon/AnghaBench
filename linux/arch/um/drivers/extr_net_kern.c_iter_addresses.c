
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct in_device* ip_ptr; } ;
struct in_ifaddr {struct in_ifaddr* ifa_next; int ifa_mask; int ifa_address; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
typedef int netmask ;
typedef int address ;


 int memcpy (unsigned char*,int *,int) ;
 void stub1 (unsigned char*,unsigned char*,void*) ;

void iter_addresses(void *d, void (*cb)(unsigned char *, unsigned char *,
     void *),
      void *arg)
{
 struct net_device *dev = d;
 struct in_device *ip = dev->ip_ptr;
 struct in_ifaddr *in;
 unsigned char address[4], netmask[4];

 if (ip == ((void*)0)) return;
 in = ip->ifa_list;
 while (in != ((void*)0)) {
  memcpy(address, &in->ifa_address, sizeof(address));
  memcpy(netmask, &in->ifa_mask, sizeof(netmask));
  (*cb)(address, netmask, arg);
  in = in->ifa_next;
 }
}
