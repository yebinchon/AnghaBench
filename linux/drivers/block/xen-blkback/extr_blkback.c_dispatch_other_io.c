
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xen_blkif_ring {int dummy; } ;
struct pending_req {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ other; } ;
struct blkif_request {int operation; TYPE_2__ u; } ;


 int BLKIF_RSP_EOPNOTSUPP ;
 int EIO ;
 int free_req (struct xen_blkif_ring*,struct pending_req*) ;
 int make_response (struct xen_blkif_ring*,int ,int ,int ) ;

__attribute__((used)) static int dispatch_other_io(struct xen_blkif_ring *ring,
        struct blkif_request *req,
        struct pending_req *pending_req)
{
 free_req(ring, pending_req);
 make_response(ring, req->u.other.id, req->operation,
        BLKIF_RSP_EOPNOTSUPP);
 return -EIO;
}
