
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_struct {int dummy; } ;
struct disk_part_tbl {int len; int * part; } ;
struct disk_part_iter {int flags; int idx; struct hd_struct* part; TYPE_1__* disk; } ;
struct TYPE_2__ {int part_tbl; } ;


 int DISK_PITER_INCL_EMPTY ;
 int DISK_PITER_INCL_EMPTY_PART0 ;
 int DISK_PITER_INCL_PART0 ;
 int DISK_PITER_REVERSE ;
 int disk_put_part (struct hd_struct*) ;
 int get_device (int ) ;
 int part_nr_sects_read (struct hd_struct*) ;
 int part_to_dev (struct hd_struct*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct hd_struct *disk_part_iter_next(struct disk_part_iter *piter)
{
 struct disk_part_tbl *ptbl;
 int inc, end;


 disk_put_part(piter->part);
 piter->part = ((void*)0);


 rcu_read_lock();
 ptbl = rcu_dereference(piter->disk->part_tbl);


 if (piter->flags & DISK_PITER_REVERSE) {
  inc = -1;
  if (piter->flags & (DISK_PITER_INCL_PART0 |
        DISK_PITER_INCL_EMPTY_PART0))
   end = -1;
  else
   end = 0;
 } else {
  inc = 1;
  end = ptbl->len;
 }


 for (; piter->idx != end; piter->idx += inc) {
  struct hd_struct *part;

  part = rcu_dereference(ptbl->part[piter->idx]);
  if (!part)
   continue;
  if (!part_nr_sects_read(part) &&
      !(piter->flags & DISK_PITER_INCL_EMPTY) &&
      !(piter->flags & DISK_PITER_INCL_EMPTY_PART0 &&
        piter->idx == 0))
   continue;

  get_device(part_to_dev(part));
  piter->part = part;
  piter->idx += inc;
  break;
 }

 rcu_read_unlock();

 return piter->part;
}
