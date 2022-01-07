
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union blkif_back_rings {int common; } ;
struct xen_blkif_ring {union blkif_back_rings blk_rings; } ;


 int RING_FINAL_CHECK_FOR_REQUESTS (int *,int) ;
 int __do_block_io_op (struct xen_blkif_ring*) ;

__attribute__((used)) static int
do_block_io_op(struct xen_blkif_ring *ring)
{
 union blkif_back_rings *blk_rings = &ring->blk_rings;
 int more_to_do;

 do {
  more_to_do = __do_block_io_op(ring);
  if (more_to_do)
   break;

  RING_FINAL_CHECK_FOR_REQUESTS(&blk_rings->common, more_to_do);
 } while (more_to_do);

 return more_to_do;
}
