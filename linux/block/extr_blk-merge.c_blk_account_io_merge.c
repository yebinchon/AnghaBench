
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;


 scalar_t__ blk_do_io_stat (struct request*) ;
 int hd_struct_put (struct hd_struct*) ;
 int part_dec_in_flight (int ,struct hd_struct*,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int rq_data_dir (struct request*) ;

__attribute__((used)) static void blk_account_io_merge(struct request *req)
{
 if (blk_do_io_stat(req)) {
  struct hd_struct *part;

  part_stat_lock();
  part = req->part;

  part_dec_in_flight(req->q, part, rq_data_dir(req));

  hd_struct_put(part);
  part_stat_unlock();
 }
}
