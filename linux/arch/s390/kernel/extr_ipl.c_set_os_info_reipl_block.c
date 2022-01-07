
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 int OS_INFO_REIPL_BLOCK ;
 int os_info_entry_add (int ,TYPE_2__*,int ) ;
 TYPE_2__* reipl_block_actual ;

void set_os_info_reipl_block(void)
{
 os_info_entry_add(OS_INFO_REIPL_BLOCK, reipl_block_actual,
     reipl_block_actual->hdr.len);
}
