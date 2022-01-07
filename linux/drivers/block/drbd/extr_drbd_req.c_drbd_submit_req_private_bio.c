
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_request {struct bio* private_bio; struct drbd_device* device; } ;
struct drbd_device {TYPE_1__* ldev; } ;
struct bio {int bi_opf; } ;
struct TYPE_2__ {int backing_bdev; } ;


 unsigned int DRBD_FAULT_DT_RA ;
 unsigned int DRBD_FAULT_DT_RD ;
 unsigned int DRBD_FAULT_DT_WR ;
 int EE_TRIM ;
 int EE_ZEROOUT ;
 int REQ_NOUNMAP ;
 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ REQ_OP_READ ;
 scalar_t__ REQ_OP_WRITE_ZEROES ;
 int REQ_RAHEAD ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 scalar_t__ drbd_insert_fault (struct drbd_device*,unsigned int) ;
 int drbd_process_discard_or_zeroes_req (struct drbd_request*,int) ;
 int generic_make_request (struct bio*) ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 int put_ldev (struct drbd_device*) ;

__attribute__((used)) static void
drbd_submit_req_private_bio(struct drbd_request *req)
{
 struct drbd_device *device = req->device;
 struct bio *bio = req->private_bio;
 unsigned int type;

 if (bio_op(bio) != REQ_OP_READ)
  type = DRBD_FAULT_DT_WR;
 else if (bio->bi_opf & REQ_RAHEAD)
  type = DRBD_FAULT_DT_RA;
 else
  type = DRBD_FAULT_DT_RD;

 bio_set_dev(bio, device->ldev->backing_bdev);






 if (get_ldev(device)) {
  if (drbd_insert_fault(device, type))
   bio_io_error(bio);
  else if (bio_op(bio) == REQ_OP_WRITE_ZEROES)
   drbd_process_discard_or_zeroes_req(req, EE_ZEROOUT |
       ((bio->bi_opf & REQ_NOUNMAP) ? 0 : EE_TRIM));
  else if (bio_op(bio) == REQ_OP_DISCARD)
   drbd_process_discard_or_zeroes_req(req, EE_TRIM);
  else
   generic_make_request(bio);
  put_ldev(device);
 } else
  bio_io_error(bio);
}
