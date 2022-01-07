
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pending_req {scalar_t__ operation; int pendcnt; void* status; TYPE_2__* ring; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_4__ {TYPE_1__* blkif; } ;
struct TYPE_3__ {int be; } ;


 scalar_t__ BLKIF_OP_FLUSH_DISKCACHE ;
 scalar_t__ BLKIF_OP_WRITE_BARRIER ;
 void* BLKIF_RSP_EOPNOTSUPP ;
 void* BLKIF_RSP_ERROR ;
 scalar_t__ BLK_STS_NOTSUPP ;
 int XBT_NIL ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int pr_debug (char*,...) ;
 int xen_blkbk_barrier (int ,int ,int ) ;
 int xen_blkbk_flush_diskcache (int ,int ,int ) ;
 int xen_blkbk_unmap_and_respond (struct pending_req*) ;

__attribute__((used)) static void __end_block_io_op(struct pending_req *pending_req,
  blk_status_t error)
{

 if (pending_req->operation == BLKIF_OP_FLUSH_DISKCACHE &&
     error == BLK_STS_NOTSUPP) {
  pr_debug("flush diskcache op failed, not supported\n");
  xen_blkbk_flush_diskcache(XBT_NIL, pending_req->ring->blkif->be, 0);
  pending_req->status = BLKIF_RSP_EOPNOTSUPP;
 } else if (pending_req->operation == BLKIF_OP_WRITE_BARRIER &&
     error == BLK_STS_NOTSUPP) {
  pr_debug("write barrier op failed, not supported\n");
  xen_blkbk_barrier(XBT_NIL, pending_req->ring->blkif->be, 0);
  pending_req->status = BLKIF_RSP_EOPNOTSUPP;
 } else if (error) {
  pr_debug("Buffer not up-to-date at end of operation,"
    " error=%d\n", error);
  pending_req->status = BLKIF_RSP_ERROR;
 }






 if (atomic_dec_and_test(&pending_req->pendcnt))
  xen_blkbk_unmap_and_respond(pending_req);
}
