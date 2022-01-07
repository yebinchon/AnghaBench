
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int completed; scalar_t__ waiting; } ;
struct drbd_request {unsigned int rq_state; scalar_t__ epoch; int req_pending_master_completion; TYPE_1__ i; TYPE_4__* master_bio; int tl_requests; int private_bio; struct drbd_device* device; } ;
struct drbd_device {int misc_wait; } ;
struct bio_and_error {TYPE_4__* bio; int error; } ;
struct TYPE_8__ {int bi_opf; } ;
struct TYPE_7__ {TYPE_2__* connection; } ;
struct TYPE_6__ {int current_tle_nr; } ;


 int EIO ;
 int PTR_ERR (int ) ;
 scalar_t__ REQ_OP_READ ;
 int REQ_RAHEAD ;
 unsigned int const RQ_COMPLETION_SUSP ;
 unsigned int const RQ_LOCAL_ABORTED ;
 unsigned int const RQ_LOCAL_OK ;
 unsigned int const RQ_LOCAL_PENDING ;
 unsigned int const RQ_NET_OK ;
 unsigned int const RQ_NET_PENDING ;
 unsigned int const RQ_NET_QUEUED ;
 int RQ_POSTPONED ;
 int _drbd_end_io_acct (struct drbd_device*,struct drbd_request*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ bio_op (TYPE_4__*) ;
 int drbd_err (struct drbd_device*,char*,...) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 scalar_t__ op_is_write (scalar_t__) ;
 int start_new_tl_epoch (TYPE_2__*) ;
 int wake_up (int *) ;

__attribute__((used)) static
void drbd_req_complete(struct drbd_request *req, struct bio_and_error *m)
{
 const unsigned s = req->rq_state;
 struct drbd_device *device = req->device;
 int error, ok;
 if ((s & RQ_LOCAL_PENDING && !(s & RQ_LOCAL_ABORTED)) ||
     (s & RQ_NET_QUEUED) || (s & RQ_NET_PENDING) ||
     (s & RQ_COMPLETION_SUSP)) {
  drbd_err(device, "drbd_req_complete: Logic BUG rq_state = 0x%x\n", s);
  return;
 }

 if (!req->master_bio) {
  drbd_err(device, "drbd_req_complete: Logic BUG, master_bio == NULL!\n");
  return;
 }
 ok = (s & RQ_LOCAL_OK) || (s & RQ_NET_OK);
 error = PTR_ERR(req->private_bio);
 if (op_is_write(bio_op(req->master_bio)) &&
     req->epoch == atomic_read(&first_peer_device(device)->connection->current_tle_nr))
  start_new_tl_epoch(first_peer_device(device)->connection);


 _drbd_end_io_acct(device, req);
 if (!ok &&
     bio_op(req->master_bio) == REQ_OP_READ &&
     !(req->master_bio->bi_opf & REQ_RAHEAD) &&
     !list_empty(&req->tl_requests))
  req->rq_state |= RQ_POSTPONED;

 if (!(req->rq_state & RQ_POSTPONED)) {
  m->error = ok ? 0 : (error ?: -EIO);
  m->bio = req->master_bio;
  req->master_bio = ((void*)0);




  req->i.completed = 1;
 }

 if (req->i.waiting)
  wake_up(&device->misc_wait);





 list_del_init(&req->req_pending_master_completion);
}
