
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa_open_data {int dummy; } ;
typedef int gfp_t ;


 int ipv4_list_add_range (struct sa_open_data*,int,int,int ) ;

__attribute__((used)) static inline int ipv4_list_add_netmask(struct sa_open_data *od,
  u32 net, u32 net_mask, gfp_t gfp)
{
 u32 start = net & net_mask;
 u32 end = net | ~net_mask;

 return ipv4_list_add_range(od, start, end, gfp);
}
