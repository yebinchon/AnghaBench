
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_request {int rq_state; int kref; int completion_ref; struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct bio_and_error {int dummy; } ;


 int D_ASSERT (struct drbd_device*,int ) ;
 int RQ_LOCAL_ABORTED ;
 int RQ_POSTPONED ;
 int atomic_sub_and_test (int,int *) ;
 int drbd_req_complete (struct drbd_request*,struct bio_and_error*) ;
 int drbd_req_destroy ;
 int drbd_restart_request (struct drbd_request*) ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void drbd_req_put_completion_ref(struct drbd_request *req, struct bio_and_error *m, int put)
{
 struct drbd_device *device = req->device;
 D_ASSERT(device, m || (req->rq_state & RQ_POSTPONED));

 if (!put)
  return;

 if (!atomic_sub_and_test(put, &req->completion_ref))
  return;

 drbd_req_complete(req, m);



 if (req->rq_state & RQ_LOCAL_ABORTED)
  return;

 if (req->rq_state & RQ_POSTPONED) {


  drbd_restart_request(req);
  return;
 }

 kref_put(&req->kref, drbd_req_destroy);
}
