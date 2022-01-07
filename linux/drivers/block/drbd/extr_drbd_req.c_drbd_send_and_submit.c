
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drbd_resource {int req_lock; } ;
struct TYPE_5__ {int size; scalar_t__ sector; } ;
struct drbd_request {TYPE_2__ i; int req_pending_local; int pre_submit_jif; int * private_bio; int req_pending_master_completion; int tl_requests; int epoch; int rq_state; int master_bio; } ;
struct drbd_plug_cb {int dummy; } ;
struct drbd_device {int * pending_completion; int * pending_master_completion; struct drbd_resource* resource; } ;
struct bio_and_error {scalar_t__ bio; int * member_0; } ;
struct TYPE_6__ {TYPE_1__* connection; } ;
struct TYPE_4__ {int transfer_log; int current_tle_writes; int current_tle_nr; } ;


 int QUEUE_FOR_NET_READ ;
 int RQ_POSTPONED ;
 int TO_BE_SENT ;
 int TO_BE_SUBMITTED ;
 int const WRITE ;
 scalar_t__ __ratelimit (int *) ;
 int _req_mod (struct drbd_request*,int ) ;
 int atomic_read (int *) ;
 int bio_data_dir (int ) ;
 int bio_put (int *) ;
 int complete_conflicting_writes (struct drbd_request*) ;
 int complete_master_bio (struct drbd_device*,struct bio_and_error*) ;
 int do_remote_read (struct drbd_request*) ;
 struct drbd_plug_cb* drbd_check_plugged (struct drbd_resource*) ;
 int drbd_err (struct drbd_device*,char*,unsigned long long,int) ;
 int drbd_process_write_request (struct drbd_request*) ;
 int drbd_ratelimit_state ;
 int drbd_req_put_completion_ref (struct drbd_request*,struct bio_and_error*,int) ;
 int drbd_submit_req_private_bio (struct drbd_request*) ;
 scalar_t__ drbd_suspended (struct drbd_device*) ;
 int drbd_update_plug (struct drbd_plug_cb*,struct drbd_request*) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int may_do_writes (struct drbd_device*) ;
 int maybe_pull_ahead (struct drbd_device*) ;
 int put_ldev (struct drbd_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void drbd_send_and_submit(struct drbd_device *device, struct drbd_request *req)
{
 struct drbd_resource *resource = device->resource;
 const int rw = bio_data_dir(req->master_bio);
 struct bio_and_error m = { ((void*)0), };
 bool no_remote = 0;
 bool submit_private_bio = 0;

 spin_lock_irq(&resource->req_lock);
 if (rw == WRITE) {



  complete_conflicting_writes(req);




  maybe_pull_ahead(device);
 }


 if (drbd_suspended(device)) {

  req->rq_state |= RQ_POSTPONED;
  if (req->private_bio) {
   bio_put(req->private_bio);
   req->private_bio = ((void*)0);
   put_ldev(device);
  }
  goto out;
 }




 if (rw != WRITE) {
  if (!do_remote_read(req) && !req->private_bio)
   goto nodata;
 }


 req->epoch = atomic_read(&first_peer_device(device)->connection->current_tle_nr);



 if (likely(req->i.size!=0)) {
  if (rw == WRITE)
   first_peer_device(device)->connection->current_tle_writes++;

  list_add_tail(&req->tl_requests, &first_peer_device(device)->connection->transfer_log);
 }

 if (rw == WRITE) {
  if (req->private_bio && !may_do_writes(device)) {
   bio_put(req->private_bio);
   req->private_bio = ((void*)0);
   put_ldev(device);
   goto nodata;
  }
  if (!drbd_process_write_request(req))
   no_remote = 1;
 } else {


  if (req->private_bio == ((void*)0)) {
   _req_mod(req, TO_BE_SENT);
   _req_mod(req, QUEUE_FOR_NET_READ);
  } else
   no_remote = 1;
 }

 if (no_remote == 0) {
  struct drbd_plug_cb *plug = drbd_check_plugged(resource);
  if (plug)
   drbd_update_plug(plug, req);
 }



 if (list_empty(&req->req_pending_master_completion))
  list_add_tail(&req->req_pending_master_completion,
   &device->pending_master_completion[rw == WRITE]);
 if (req->private_bio) {

  req->pre_submit_jif = jiffies;
  list_add_tail(&req->req_pending_local,
   &device->pending_completion[rw == WRITE]);
  _req_mod(req, TO_BE_SUBMITTED);

  submit_private_bio = 1;
 } else if (no_remote) {
nodata:
  if (__ratelimit(&drbd_ratelimit_state))
   drbd_err(device, "IO ERROR: neither local nor remote data, sector %llu+%u\n",
     (unsigned long long)req->i.sector, req->i.size >> 9);


 }

out:
 drbd_req_put_completion_ref(req, &m, 1);
 spin_unlock_irq(&resource->req_lock);







 if (submit_private_bio)
  drbd_submit_req_private_bio(req);
 if (m.bio)
  complete_master_bio(device, &m);
}
