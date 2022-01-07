
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct vio_dring_state {size_t cons; size_t prod; } ;
struct TYPE_4__ {int state; } ;
struct vio_disk_desc {TYPE_2__ hdr; int ncookies; int cookies; } ;
struct vdc_req_entry {struct request* req; } ;
struct TYPE_3__ {int lp; struct vio_dring_state* drings; } ;
struct vdc_port {TYPE_1__ vio; struct vdc_req_entry* rq_arr; } ;
struct request {int dummy; } ;


 int VIO_DESC_FREE ;
 size_t VIO_DRIVER_TX_RING ;
 int blk_mq_requeue_request (struct request*,int) ;
 int ldc_unmap (int ,int ,int ) ;
 int vdc_end_special (struct vdc_port*,struct vio_disk_desc*) ;
 struct vio_disk_desc* vio_dring_entry (struct vio_dring_state*,size_t) ;
 void* vio_dring_next (struct vio_dring_state*,size_t) ;

__attribute__((used)) static void vdc_requeue_inflight(struct vdc_port *port)
{
 struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
 u32 idx;

 for (idx = dr->cons; idx != dr->prod; idx = vio_dring_next(dr, idx)) {
  struct vio_disk_desc *desc = vio_dring_entry(dr, idx);
  struct vdc_req_entry *rqe = &port->rq_arr[idx];
  struct request *req;

  ldc_unmap(port->vio.lp, desc->cookies, desc->ncookies);
  desc->hdr.state = VIO_DESC_FREE;
  dr->cons = vio_dring_next(dr, idx);

  req = rqe->req;
  if (req == ((void*)0)) {
   vdc_end_special(port, desc);
   continue;
  }

  rqe->req = ((void*)0);
  blk_mq_requeue_request(req, 0);
 }
}
