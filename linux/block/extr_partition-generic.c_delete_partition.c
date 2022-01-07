
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int holder_dir; } ;
struct gendisk {int part_tbl; } ;
struct disk_part_tbl {int len; int last_lookup; int * part; } ;


 int blk_invalidate_devt (int ) ;
 int device_del (int ) ;
 int hd_struct_kill (struct hd_struct*) ;
 int kobject_put (int ) ;
 int part_devt (struct hd_struct*) ;
 int part_to_dev (struct hd_struct*) ;
 int rcu_assign_pointer (int ,int *) ;
 void* rcu_dereference_protected (int ,int) ;

void delete_partition(struct gendisk *disk, int partno)
{
 struct disk_part_tbl *ptbl =
  rcu_dereference_protected(disk->part_tbl, 1);
 struct hd_struct *part;

 if (partno >= ptbl->len)
  return;

 part = rcu_dereference_protected(ptbl->part[partno], 1);
 if (!part)
  return;

 rcu_assign_pointer(ptbl->part[partno], ((void*)0));
 rcu_assign_pointer(ptbl->last_lookup, ((void*)0));
 kobject_put(part->holder_dir);
 device_del(part_to_dev(part));







 blk_invalidate_devt(part_devt(part));
 hd_struct_kill(part);
}
