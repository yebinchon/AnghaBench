
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa_open_data {int dummy; } ;
typedef int gfp_t ;


 int ipv4_list_add_netmask (struct sa_open_data*,int,int,int ) ;

__attribute__((used)) static int ipv4_list_add_net(struct sa_open_data *od, u32 net,
  int net_bits, gfp_t gfp)
{
 u32 net_mask;

 if(net_bits == 0)
  net_mask = 0x00000000;
 else
  net_mask = ~(((u32)1 << (32 - net_bits)) - 1);


 return ipv4_list_add_netmask(od, net, net_mask, gfp);
}
