
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bootext_addr; } ;


 TYPE_1__* board_info ;
 int prom_read_be32 (int *) ;

__attribute__((used)) static inline u32 bootbase_get_bootext_addr(void)
{
 return prom_read_be32(&board_info->bootext_addr);
}
