
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int sector; } ;
struct drbd_request {TYPE_2__* private_bio; TYPE_1__ i; int device; } ;
struct TYPE_4__ {int bi_status; } ;


 int BLK_STS_IOERR ;
 int bio_endio (TYPE_2__*) ;
 int drbd_issue_discard_or_zero_out (int ,int ,int,int) ;

__attribute__((used)) static void drbd_process_discard_or_zeroes_req(struct drbd_request *req, int flags)
{
 int err = drbd_issue_discard_or_zero_out(req->device,
    req->i.sector, req->i.size >> 9, flags);
 if (err)
  req->private_bio->bi_status = BLK_STS_IOERR;
 bio_endio(req->private_bio);
}
