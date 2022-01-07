
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_vbd {int bdev; int pdevice; scalar_t__ readonly; } ;
struct xen_blkif {struct xen_vbd vbd; } ;
struct phys_req {scalar_t__ nr_sects; scalar_t__ sector_number; int bdev; int dev; } ;
typedef scalar_t__ blkif_sector_t ;


 int EACCES ;
 int REQ_OP_READ ;
 scalar_t__ likely (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vbd_sz (struct xen_vbd*) ;

__attribute__((used)) static int xen_vbd_translate(struct phys_req *req, struct xen_blkif *blkif,
        int operation)
{
 struct xen_vbd *vbd = &blkif->vbd;
 int rc = -EACCES;

 if ((operation != REQ_OP_READ) && vbd->readonly)
  goto out;

 if (likely(req->nr_sects)) {
  blkif_sector_t end = req->sector_number + req->nr_sects;

  if (unlikely(end < req->sector_number))
   goto out;
  if (unlikely(end > vbd_sz(vbd)))
   goto out;
 }

 req->dev = vbd->pdevice;
 req->bdev = vbd->bdev;
 rc = 0;

 out:
 return rc;
}
