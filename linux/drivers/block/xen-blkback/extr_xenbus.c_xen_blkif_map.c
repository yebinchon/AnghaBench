
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * sring; } ;
struct TYPE_6__ {TYPE_2__ common; int x86_64; int x86_32; int native; } ;
struct xen_blkif_ring {int irq; TYPE_3__ blk_rings; scalar_t__ blk_ring; struct xen_blkif* blkif; } ;
struct xen_blkif {int blk_protocol; TYPE_1__* be; int domid; } ;
struct blkif_x86_64_sring {int dummy; } ;
typedef struct blkif_x86_64_sring blkif_x86_32_sring ;
typedef struct blkif_x86_64_sring blkif_sring ;
typedef int grant_ref_t ;
struct TYPE_4__ {int dev; } ;


 int BACK_RING_INIT (int *,struct blkif_x86_64_sring*,unsigned int) ;



 int BUG () ;
 unsigned int XEN_PAGE_SIZE ;
 int bind_interdomain_evtchn_to_irqhandler (int ,unsigned int,int ,int ,char*,struct xen_blkif_ring*) ;
 int xen_blkif_be_int ;
 int xenbus_map_ring_valloc (int ,int *,unsigned int,scalar_t__*) ;
 int xenbus_unmap_ring_vfree (int ,scalar_t__) ;

__attribute__((used)) static int xen_blkif_map(struct xen_blkif_ring *ring, grant_ref_t *gref,
    unsigned int nr_grefs, unsigned int evtchn)
{
 int err;
 struct xen_blkif *blkif = ring->blkif;


 if (ring->irq)
  return 0;

 err = xenbus_map_ring_valloc(blkif->be->dev, gref, nr_grefs,
         &ring->blk_ring);
 if (err < 0)
  return err;

 switch (blkif->blk_protocol) {
 case 130:
 {
  struct blkif_sring *sring;
  sring = (struct blkif_sring *)ring->blk_ring;
  BACK_RING_INIT(&ring->blk_rings.native, sring,
          XEN_PAGE_SIZE * nr_grefs);
  break;
 }
 case 129:
 {
  struct blkif_x86_32_sring *sring_x86_32;
  sring_x86_32 = (struct blkif_x86_32_sring *)ring->blk_ring;
  BACK_RING_INIT(&ring->blk_rings.x86_32, sring_x86_32,
          XEN_PAGE_SIZE * nr_grefs);
  break;
 }
 case 128:
 {
  struct blkif_x86_64_sring *sring_x86_64;
  sring_x86_64 = (struct blkif_x86_64_sring *)ring->blk_ring;
  BACK_RING_INIT(&ring->blk_rings.x86_64, sring_x86_64,
          XEN_PAGE_SIZE * nr_grefs);
  break;
 }
 default:
  BUG();
 }

 err = bind_interdomain_evtchn_to_irqhandler(blkif->domid, evtchn,
          xen_blkif_be_int, 0,
          "blkif-backend", ring);
 if (err < 0) {
  xenbus_unmap_ring_vfree(blkif->be->dev, ring->blk_ring);
  ring->blk_rings.common.sring = ((void*)0);
  return err;
 }
 ring->irq = err;

 return 0;
}
