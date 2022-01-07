
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx {int dummy; } ;
struct TYPE_2__ {int is_ar724x; } ;


 int NET_IP_ALIGN ;
 int NET_SKB_PAD ;
 TYPE_1__* ag71xx_get_pdata (struct ag71xx*) ;
 scalar_t__ ag71xx_has_ar8216 (struct ag71xx*) ;

__attribute__((used)) static int ag71xx_buffer_offset(struct ag71xx *ag)
{
 int offset = NET_SKB_PAD;







 if (!ag71xx_get_pdata(ag)->is_ar724x || ag71xx_has_ar8216(ag))
  return offset;

 return offset + NET_IP_ALIGN;
}
