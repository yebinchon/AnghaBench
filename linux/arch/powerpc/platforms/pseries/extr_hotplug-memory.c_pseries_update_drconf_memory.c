
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct of_reconfig_data {TYPE_2__* prop; TYPE_1__* old_prop; } ;
struct of_drconf_cell_v1 {int base_addr; int flags; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ value; } ;


 int DRCONF_MEM_ASSIGNED ;
 int EINVAL ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int memblock_add (int ,unsigned long) ;
 unsigned long pseries_memory_block_size () ;
 int pseries_remove_memblock (int ,unsigned long) ;
 scalar_t__ rtas_hp_event ;

__attribute__((used)) static int pseries_update_drconf_memory(struct of_reconfig_data *pr)
{
 struct of_drconf_cell_v1 *new_drmem, *old_drmem;
 unsigned long memblock_size;
 u32 entries;
 __be32 *p;
 int i, rc = -EINVAL;

 if (rtas_hp_event)
  return 0;

 memblock_size = pseries_memory_block_size();
 if (!memblock_size)
  return -EINVAL;

 if (!pr->old_prop)
  return 0;

 p = (__be32 *) pr->old_prop->value;
 if (!p)
  return -EINVAL;






 entries = be32_to_cpu(*p++);
 old_drmem = (struct of_drconf_cell_v1 *)p;

 p = (__be32 *)pr->prop->value;
 p++;
 new_drmem = (struct of_drconf_cell_v1 *)p;

 for (i = 0; i < entries; i++) {
  if ((be32_to_cpu(old_drmem[i].flags) & DRCONF_MEM_ASSIGNED) &&
      (!(be32_to_cpu(new_drmem[i].flags) & DRCONF_MEM_ASSIGNED))) {
   rc = pseries_remove_memblock(
    be64_to_cpu(old_drmem[i].base_addr),
           memblock_size);
   break;
  } else if ((!(be32_to_cpu(old_drmem[i].flags) &
       DRCONF_MEM_ASSIGNED)) &&
       (be32_to_cpu(new_drmem[i].flags) &
       DRCONF_MEM_ASSIGNED)) {
   rc = memblock_add(be64_to_cpu(old_drmem[i].base_addr),
       memblock_size);
   rc = (rc < 0) ? -EINVAL : 0;
   break;
  }
 }
 return rc;
}
