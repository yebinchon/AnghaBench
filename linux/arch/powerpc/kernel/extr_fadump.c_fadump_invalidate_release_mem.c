
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; int boot_mem_top; int dump_active; } ;
struct TYPE_5__ {scalar_t__ (* fadump_setup_metadata ) (TYPE_2__*) ;int (* fadump_init_mem_struct ) (TYPE_2__*) ;} ;


 int fadump_cleanup () ;
 int fadump_free_cpu_notes_buf () ;
 int fadump_mutex ;
 int fadump_release_memory (int ,int ) ;
 TYPE_2__ fw_dump ;
 int memblock_end_of_DRAM () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void fadump_invalidate_release_mem(void)
{
 mutex_lock(&fadump_mutex);
 if (!fw_dump.dump_active) {
  mutex_unlock(&fadump_mutex);
  return;
 }

 fadump_cleanup();
 mutex_unlock(&fadump_mutex);

 fadump_release_memory(fw_dump.boot_mem_top, memblock_end_of_DRAM());
 fadump_free_cpu_notes_buf();





 if (fw_dump.ops->fadump_setup_metadata &&
     (fw_dump.ops->fadump_setup_metadata(&fw_dump) < 0))
  pr_warn("Failed to setup kernel metadata!\n");
 fw_dump.ops->fadump_init_mem_struct(&fw_dump);
}
