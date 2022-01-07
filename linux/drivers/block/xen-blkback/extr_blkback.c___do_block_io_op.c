
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ req_cons; scalar_t__ rsp_prod_pvt; TYPE_1__* sring; } ;
union blkif_back_rings {TYPE_4__ common; int x86_64; int x86_32; int native; } ;
struct xen_blkif_ring {TYPE_3__* blkif; int st_oo_req; union blkif_back_rings blk_rings; } ;
struct pending_req {int dummy; } ;
struct blkif_request {int operation; } ;
typedef int req ;
struct TYPE_7__ {int pdevice; } ;
struct TYPE_8__ {int blk_protocol; TYPE_2__ vbd; } ;
struct TYPE_6__ {scalar_t__ req_prod; } ;
typedef scalar_t__ RING_IDX ;
 int BUG () ;
 int EACCES ;
 int RING_GET_REQUEST (int *,scalar_t__) ;
 scalar_t__ RING_REQUEST_CONS_OVERFLOW (TYPE_4__*,scalar_t__) ;
 scalar_t__ RING_REQUEST_PROD_OVERFLOW (TYPE_4__*,scalar_t__) ;
 struct pending_req* alloc_req (struct xen_blkif_ring*) ;
 int barrier () ;
 int blkif_get_x86_32_req (struct blkif_request*,int ) ;
 int blkif_get_x86_64_req (struct blkif_request*,int ) ;
 int cond_resched () ;
 int dispatch_discard_io (struct xen_blkif_ring*,struct blkif_request*) ;
 int dispatch_other_io (struct xen_blkif_ring*,struct blkif_request*,struct pending_req*) ;
 int dispatch_rw_block_io (struct xen_blkif_ring*,struct blkif_request*,struct pending_req*) ;
 int free_req (struct xen_blkif_ring*,struct pending_req*) ;
 scalar_t__ kthread_should_stop () ;
 int memcpy (struct blkif_request*,int ,int) ;
 int pr_warn (char*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int rmb () ;

__attribute__((used)) static int
__do_block_io_op(struct xen_blkif_ring *ring)
{
 union blkif_back_rings *blk_rings = &ring->blk_rings;
 struct blkif_request req;
 struct pending_req *pending_req;
 RING_IDX rc, rp;
 int more_to_do = 0;

 rc = blk_rings->common.req_cons;
 rp = blk_rings->common.sring->req_prod;
 rmb();

 if (RING_REQUEST_PROD_OVERFLOW(&blk_rings->common, rp)) {
  rc = blk_rings->common.rsp_prod_pvt;
  pr_warn("Frontend provided bogus ring requests (%d - %d = %d). Halting ring processing on dev=%04x\n",
   rp, rc, rp - rc, ring->blkif->vbd.pdevice);
  return -EACCES;
 }
 while (rc != rp) {

  if (RING_REQUEST_CONS_OVERFLOW(&blk_rings->common, rc))
   break;

  if (kthread_should_stop()) {
   more_to_do = 1;
   break;
  }

  pending_req = alloc_req(ring);
  if (((void*)0) == pending_req) {
   ring->st_oo_req++;
   more_to_do = 1;
   break;
  }

  switch (ring->blkif->blk_protocol) {
  case 130:
   memcpy(&req, RING_GET_REQUEST(&blk_rings->native, rc), sizeof(req));
   break;
  case 129:
   blkif_get_x86_32_req(&req, RING_GET_REQUEST(&blk_rings->x86_32, rc));
   break;
  case 128:
   blkif_get_x86_64_req(&req, RING_GET_REQUEST(&blk_rings->x86_64, rc));
   break;
  default:
   BUG();
  }
  blk_rings->common.req_cons = ++rc;


  barrier();

  switch (req.operation) {
  case 133:
  case 132:
  case 131:
  case 135:
  case 134:
   if (dispatch_rw_block_io(ring, &req, pending_req))
    goto done;
   break;
  case 136:
   free_req(ring, pending_req);
   if (dispatch_discard_io(ring, &req))
    goto done;
   break;
  default:
   if (dispatch_other_io(ring, &req, pending_req))
    goto done;
   break;
  }


  cond_resched();
 }
done:
 return more_to_do;
}
