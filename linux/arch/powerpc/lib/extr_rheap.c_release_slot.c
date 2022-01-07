
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int empty_slots; int empty_list; } ;
typedef TYPE_1__ rh_info_t ;
struct TYPE_6__ {int list; } ;
typedef TYPE_2__ rh_block_t ;


 int list_add (int *,int *) ;

__attribute__((used)) static inline void release_slot(rh_info_t * info, rh_block_t * blk)
{
 list_add(&blk->list, &info->empty_list);
 info->empty_slots++;
}
