
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ hwaddr; int rtaddr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* sunxi_rsb_addr_maps ;

__attribute__((used)) static u8 sunxi_rsb_get_rtaddr(u16 hwaddr)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sunxi_rsb_addr_maps); i++)
  if (hwaddr == sunxi_rsb_addr_maps[i].hwaddr)
   return sunxi_rsb_addr_maps[i].rtaddr;

 return 0;
}
