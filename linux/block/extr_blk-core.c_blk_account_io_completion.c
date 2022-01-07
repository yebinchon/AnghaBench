
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;


 scalar_t__ blk_do_io_stat (struct request*) ;
 int op_stat_group (int ) ;
 int part_stat_add (struct hd_struct*,int ,unsigned int) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int req_op (struct request*) ;
 int * sectors ;

void blk_account_io_completion(struct request *req, unsigned int bytes)
{
 if (blk_do_io_stat(req)) {
  const int sgrp = op_stat_group(req_op(req));
  struct hd_struct *part;

  part_stat_lock();
  part = req->part;
  part_stat_add(part, sectors[sgrp], bytes >> 9);
  part_stat_unlock();
 }
}
