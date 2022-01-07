
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; scalar_t__ dump_registered; scalar_t__ dump_active; int fadump_supported; } ;
struct TYPE_6__ {int (* fadump_cleanup ) (TYPE_2__*) ;int (* fadump_unregister ) (TYPE_2__*) ;int (* fadump_invalidate ) (TYPE_2__*) ;} ;


 int crash_mrange_info ;
 int fadump_free_mem_ranges (int *) ;
 TYPE_2__ fw_dump ;
 int pr_debug (char*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

void fadump_cleanup(void)
{
 if (!fw_dump.fadump_supported)
  return;


 if (fw_dump.dump_active) {
  pr_debug("Invalidating firmware-assisted dump registration\n");
  fw_dump.ops->fadump_invalidate(&fw_dump);
 } else if (fw_dump.dump_registered) {

  fw_dump.ops->fadump_unregister(&fw_dump);
  fadump_free_mem_ranges(&crash_mrange_info);
 }

 if (fw_dump.ops->fadump_cleanup)
  fw_dump.ops->fadump_cleanup(&fw_dump);
}
