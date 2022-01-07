
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {struct hd_struct* part; int q; TYPE_1__* rq_disk; } ;
struct hd_struct {int dummy; } ;
struct TYPE_2__ {struct hd_struct part0; } ;


 int blk_do_io_stat (struct request*) ;
 int blk_rq_pos (struct request*) ;
 struct hd_struct* disk_map_sector_rcu (TYPE_1__*,int ) ;
 int hd_struct_get (struct hd_struct*) ;
 int hd_struct_try_get (struct hd_struct*) ;
 int jiffies ;
 int * merges ;
 int part_inc_in_flight (int ,struct hd_struct*,int) ;
 int part_stat_inc (struct hd_struct*,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int rq_data_dir (struct request*) ;
 int update_io_ticks (struct hd_struct*,int ) ;

void blk_account_io_start(struct request *rq, bool new_io)
{
 struct hd_struct *part;
 int rw = rq_data_dir(rq);

 if (!blk_do_io_stat(rq))
  return;

 part_stat_lock();

 if (!new_io) {
  part = rq->part;
  part_stat_inc(part, merges[rw]);
 } else {
  part = disk_map_sector_rcu(rq->rq_disk, blk_rq_pos(rq));
  if (!hd_struct_try_get(part)) {
   part = &rq->rq_disk->part0;
   hd_struct_get(part);
  }
  part_inc_in_flight(rq->q, part, rw);
  rq->part = part;
 }

 update_io_ticks(part, jiffies);

 part_stat_unlock();
}
