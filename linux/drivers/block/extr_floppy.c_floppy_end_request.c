
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* rq_disk; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int __blk_mq_end_request (struct request*,scalar_t__) ;
 unsigned int blk_rq_cur_sectors (struct request*) ;
 scalar_t__ blk_update_request (struct request*,scalar_t__,unsigned int) ;
 unsigned int current_count_sectors ;
 int * current_req ;
 int floppy_off (unsigned int) ;

__attribute__((used)) static void floppy_end_request(struct request *req, blk_status_t error)
{
 unsigned int nr_sectors = current_count_sectors;
 unsigned int drive = (unsigned long)req->rq_disk->private_data;


 if (error)
  nr_sectors = blk_rq_cur_sectors(req);
 if (blk_update_request(req, error, nr_sectors << 9))
  return;
 __blk_mq_end_request(req, error);


 floppy_off(drive);
 current_req = ((void*)0);
}
