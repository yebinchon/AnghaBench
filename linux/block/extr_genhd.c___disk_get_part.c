
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int len; int * part; } ;
struct gendisk {int part_tbl; } ;
struct disk_part_tbl {int len; int * part; } ;


 struct hd_struct* rcu_dereference (int ) ;
 scalar_t__ unlikely (int) ;

struct hd_struct *__disk_get_part(struct gendisk *disk, int partno)
{
 struct disk_part_tbl *ptbl = rcu_dereference(disk->part_tbl);

 if (unlikely(partno < 0 || partno >= ptbl->len))
  return ((void*)0);
 return rcu_dereference(ptbl->part[partno]);
}
