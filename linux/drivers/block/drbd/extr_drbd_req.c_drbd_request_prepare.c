
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct drbd_request {unsigned long start_jif; int in_actlog_jif; int rq_state; TYPE_1__ i; int * private_bio; } ;
struct drbd_device {int ap_actlog_cnt; int flags; } ;
struct bio {int bi_status; } ;


 int AL_SUSPENDED ;
 int BLK_STS_RESOURCE ;
 int ENOMEM ;
 struct drbd_request* ERR_PTR (int ) ;
 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ REQ_OP_WRITE_ZEROES ;
 int RQ_IN_ACT_LOG ;
 int const WRITE ;
 int _drbd_start_io_acct (struct drbd_device*,struct drbd_request*) ;
 int atomic_inc (int *) ;
 int bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_put (int *) ;
 int dec_ap_bio (struct drbd_device*) ;
 int drbd_al_begin_io_fastpath (struct drbd_device*,TYPE_1__*) ;
 int drbd_err (struct drbd_device*,char*) ;
 int drbd_queue_write (struct drbd_device*,struct drbd_request*) ;
 struct drbd_request* drbd_req_new (struct drbd_device*,struct bio*) ;
 int get_ldev (struct drbd_device*) ;
 int jiffies ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct drbd_request *
drbd_request_prepare(struct drbd_device *device, struct bio *bio, unsigned long start_jif)
{
 const int rw = bio_data_dir(bio);
 struct drbd_request *req;


 req = drbd_req_new(device, bio);
 if (!req) {
  dec_ap_bio(device);


  drbd_err(device, "could not kmalloc() req\n");
  bio->bi_status = BLK_STS_RESOURCE;
  bio_endio(bio);
  return ERR_PTR(-ENOMEM);
 }
 req->start_jif = start_jif;

 if (!get_ldev(device)) {
  bio_put(req->private_bio);
  req->private_bio = ((void*)0);
 }


 _drbd_start_io_acct(device, req);


 if (bio_op(bio) == REQ_OP_WRITE_ZEROES ||
     bio_op(bio) == REQ_OP_DISCARD)
  goto queue_for_submitter_thread;

 if (rw == WRITE && req->private_bio && req->i.size
 && !test_bit(AL_SUSPENDED, &device->flags)) {
  if (!drbd_al_begin_io_fastpath(device, &req->i))
   goto queue_for_submitter_thread;
  req->rq_state |= RQ_IN_ACT_LOG;
  req->in_actlog_jif = jiffies;
 }
 return req;

 queue_for_submitter_thread:
 atomic_inc(&device->ap_actlog_cnt);
 drbd_queue_write(device, req);
 return ((void*)0);
}
