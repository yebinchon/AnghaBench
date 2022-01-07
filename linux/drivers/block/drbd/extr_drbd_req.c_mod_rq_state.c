
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; scalar_t__ waiting; } ;
struct drbd_request {unsigned int rq_state; int kref; TYPE_1__ i; void* net_done_jif; void* acked_jif; int req_pending_local; int completion_ref; struct drbd_device* device; } ;
struct drbd_peer_device {int dummy; } ;
struct drbd_device {int misc_wait; int ap_in_flight; } ;
struct bio_and_error {int dummy; } ;


 int D_ASSERT (struct drbd_device*,unsigned int) ;
 unsigned int RQ_COMPLETION_SUSP ;
 unsigned int RQ_EXP_BARR_ACK ;
 unsigned int RQ_LOCAL_ABORTED ;
 unsigned int RQ_LOCAL_PENDING ;
 unsigned int RQ_NET_DONE ;
 unsigned int RQ_NET_PENDING ;
 unsigned int RQ_NET_QUEUED ;
 unsigned int RQ_NET_SENT ;
 int advance_conn_req_ack_pending (struct drbd_peer_device*,struct drbd_request*) ;
 int advance_conn_req_next (struct drbd_peer_device*,struct drbd_request*) ;
 int advance_conn_req_not_net_done (struct drbd_peer_device*,struct drbd_request*) ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;
 int atomic_sub (int,int *) ;
 int dec_ap_pending (struct drbd_device*) ;
 int drbd_req_destroy ;
 int drbd_req_put_completion_ref (struct drbd_request*,struct bio_and_error*,int) ;
 scalar_t__ drbd_suspended (struct drbd_device*) ;
 struct drbd_peer_device* first_peer_device (struct drbd_device*) ;
 int inc_ap_pending (struct drbd_device*) ;
 void* jiffies ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int set_if_null_req_ack_pending (struct drbd_peer_device*,struct drbd_request*) ;
 int set_if_null_req_next (struct drbd_peer_device*,struct drbd_request*) ;
 int set_if_null_req_not_net_done (struct drbd_peer_device*,struct drbd_request*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mod_rq_state(struct drbd_request *req, struct bio_and_error *m,
  int clear, int set)
{
 struct drbd_device *device = req->device;
 struct drbd_peer_device *peer_device = first_peer_device(device);
 unsigned s = req->rq_state;
 int c_put = 0;

 if (drbd_suspended(device) && !((s | clear) & RQ_COMPLETION_SUSP))
  set |= RQ_COMPLETION_SUSP;



 req->rq_state &= ~clear;
 req->rq_state |= set;


 if (req->rq_state == s)
  return;



 kref_get(&req->kref);

 if (!(s & RQ_LOCAL_PENDING) && (set & RQ_LOCAL_PENDING))
  atomic_inc(&req->completion_ref);

 if (!(s & RQ_NET_PENDING) && (set & RQ_NET_PENDING)) {
  inc_ap_pending(device);
  atomic_inc(&req->completion_ref);
 }

 if (!(s & RQ_NET_QUEUED) && (set & RQ_NET_QUEUED)) {
  atomic_inc(&req->completion_ref);
  set_if_null_req_next(peer_device, req);
 }

 if (!(s & RQ_EXP_BARR_ACK) && (set & RQ_EXP_BARR_ACK))
  kref_get(&req->kref);

 if (!(s & RQ_NET_SENT) && (set & RQ_NET_SENT)) {

  if (!(s & RQ_NET_DONE)) {
   atomic_add(req->i.size >> 9, &device->ap_in_flight);
   set_if_null_req_not_net_done(peer_device, req);
  }
  if (req->rq_state & RQ_NET_PENDING)
   set_if_null_req_ack_pending(peer_device, req);
 }

 if (!(s & RQ_COMPLETION_SUSP) && (set & RQ_COMPLETION_SUSP))
  atomic_inc(&req->completion_ref);



 if ((s & RQ_COMPLETION_SUSP) && (clear & RQ_COMPLETION_SUSP))
  ++c_put;

 if (!(s & RQ_LOCAL_ABORTED) && (set & RQ_LOCAL_ABORTED)) {
  D_ASSERT(device, req->rq_state & RQ_LOCAL_PENDING);
  ++c_put;
 }

 if ((s & RQ_LOCAL_PENDING) && (clear & RQ_LOCAL_PENDING)) {
  if (req->rq_state & RQ_LOCAL_ABORTED)
   kref_put(&req->kref, drbd_req_destroy);
  else
   ++c_put;
  list_del_init(&req->req_pending_local);
 }

 if ((s & RQ_NET_PENDING) && (clear & RQ_NET_PENDING)) {
  dec_ap_pending(device);
  ++c_put;
  req->acked_jif = jiffies;
  advance_conn_req_ack_pending(peer_device, req);
 }

 if ((s & RQ_NET_QUEUED) && (clear & RQ_NET_QUEUED)) {
  ++c_put;
  advance_conn_req_next(peer_device, req);
 }

 if (!(s & RQ_NET_DONE) && (set & RQ_NET_DONE)) {
  if (s & RQ_NET_SENT)
   atomic_sub(req->i.size >> 9, &device->ap_in_flight);
  if (s & RQ_EXP_BARR_ACK)
   kref_put(&req->kref, drbd_req_destroy);
  req->net_done_jif = jiffies;




  advance_conn_req_next(peer_device, req);
  advance_conn_req_ack_pending(peer_device, req);
  advance_conn_req_not_net_done(peer_device, req);
 }




 if (req->i.waiting)
  wake_up(&device->misc_wait);

 drbd_req_put_completion_ref(req, m, c_put);
 kref_put(&req->kref, drbd_req_destroy);
}
