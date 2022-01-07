
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ opt; } ;
struct TYPE_4__ {scalar_t__ pbt; } ;
struct TYPE_6__ {TYPE_2__ fcp; TYPE_1__ pb0_hdr; } ;


 scalar_t__ IPL_PB0_FCP_OPT_DUMP ;
 scalar_t__ IPL_PBT_FCP ;
 scalar_t__ OLDMEM_BASE ;
 TYPE_3__ ipl_block ;
 scalar_t__ ipl_block_valid ;
 scalar_t__ kaslr_enabled ;
 scalar_t__ memory_end ;
 int memory_end_set ;
 int sclp_early_get_hsa_size (scalar_t__*) ;

void setup_memory_end(void)
{
}
