
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int node_id; int part_tbl; } ;
struct disk_part_tbl {int len; int * part; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int disk_max_parts (struct gendisk*) ;
 int disk_replace_part_tbl (struct gendisk*,struct disk_part_tbl*) ;
 struct disk_part_tbl* kzalloc_node (int ,int ,int ) ;
 int part ;
 int rcu_assign_pointer (int ,int ) ;
 struct disk_part_tbl* rcu_dereference_protected (int ,int) ;
 int struct_size (struct disk_part_tbl*,int ,int) ;

int disk_expand_part_tbl(struct gendisk *disk, int partno)
{
 struct disk_part_tbl *old_ptbl =
  rcu_dereference_protected(disk->part_tbl, 1);
 struct disk_part_tbl *new_ptbl;
 int len = old_ptbl ? old_ptbl->len : 0;
 int i, target;





 target = partno + 1;
 if (target < 0)
  return -EINVAL;


 if (disk_max_parts(disk) && target > disk_max_parts(disk))
  return -EINVAL;

 if (target <= len)
  return 0;

 new_ptbl = kzalloc_node(struct_size(new_ptbl, part, target), GFP_KERNEL,
    disk->node_id);
 if (!new_ptbl)
  return -ENOMEM;

 new_ptbl->len = target;

 for (i = 0; i < len; i++)
  rcu_assign_pointer(new_ptbl->part[i], old_ptbl->part[i]);

 disk_replace_part_tbl(disk, new_ptbl);
 return 0;
}
