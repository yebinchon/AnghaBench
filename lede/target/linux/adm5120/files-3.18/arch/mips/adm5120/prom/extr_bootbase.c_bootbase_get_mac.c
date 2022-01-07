
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * mac; } ;


 TYPE_1__* board_info ;

__attribute__((used)) static inline void bootbase_get_mac(u8 *mac)
{
 int i;

 for (i = 0; i < 6; i++)
  mac[i] = board_info->mac[i];
}
