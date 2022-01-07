
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_req {scalar_t__ operation; int nr_segs; int segments; int ring; } ;


 scalar_t__ BLKIF_OP_READ ;
 int xen_blkbk_map (int ,int ,int ,int) ;

__attribute__((used)) static int xen_blkbk_map_seg(struct pending_req *pending_req)
{
 int rc;

 rc = xen_blkbk_map(pending_req->ring, pending_req->segments,
      pending_req->nr_segs,
                    (pending_req->operation != BLKIF_OP_READ));

 return rc;
}
