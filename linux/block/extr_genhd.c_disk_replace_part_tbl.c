
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int part_tbl; } ;
struct disk_part_tbl {int last_lookup; } ;


 int kfree_rcu (struct disk_part_tbl*,int ) ;
 int rcu_assign_pointer (int ,struct disk_part_tbl*) ;
 struct disk_part_tbl* rcu_dereference_protected (int ,int) ;
 int rcu_head ;

__attribute__((used)) static void disk_replace_part_tbl(struct gendisk *disk,
      struct disk_part_tbl *new_ptbl)
{
 struct disk_part_tbl *old_ptbl =
  rcu_dereference_protected(disk->part_tbl, 1);

 rcu_assign_pointer(disk->part_tbl, new_ptbl);

 if (old_ptbl) {
  rcu_assign_pointer(old_ptbl->last_lookup, ((void*)0));
  kfree_rcu(old_ptbl, rcu_head);
 }
}
