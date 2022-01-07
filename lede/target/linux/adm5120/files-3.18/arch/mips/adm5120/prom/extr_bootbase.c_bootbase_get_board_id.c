
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int board_id; } ;


 TYPE_1__* board_info ;
 int prom_read_be16 (int *) ;

__attribute__((used)) static inline u16 bootbase_get_board_id(void)
{
 return prom_read_be16(&board_info->board_id);
}
