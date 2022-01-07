
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct request {int rq_flags; int q; scalar_t__ start_time_ns; struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;


 int RQF_FLUSH_SEQ ;
 scalar_t__ blk_do_io_stat (struct request*) ;
 int hd_struct_put (struct hd_struct*) ;
 int * ios ;
 int jiffies ;
 int * nsecs ;
 scalar_t__ nsecs_to_jiffies64 (scalar_t__) ;
 int op_stat_group (int ) ;
 int part_dec_in_flight (int ,struct hd_struct*,int ) ;
 int part_stat_add (struct hd_struct*,int ,scalar_t__) ;
 int part_stat_inc (struct hd_struct*,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int req_op (struct request*) ;
 int rq_data_dir (struct request*) ;
 int time_in_queue ;
 int update_io_ticks (struct hd_struct*,int ) ;

void blk_account_io_done(struct request *req, u64 now)
{





 if (blk_do_io_stat(req) && !(req->rq_flags & RQF_FLUSH_SEQ)) {
  const int sgrp = op_stat_group(req_op(req));
  struct hd_struct *part;

  part_stat_lock();
  part = req->part;

  update_io_ticks(part, jiffies);
  part_stat_inc(part, ios[sgrp]);
  part_stat_add(part, nsecs[sgrp], now - req->start_time_ns);
  part_stat_add(part, time_in_queue, nsecs_to_jiffies64(now - req->start_time_ns));
  part_dec_in_flight(req->q, part, rq_data_dir(req));

  hd_struct_put(part);
  part_stat_unlock();
 }
}
