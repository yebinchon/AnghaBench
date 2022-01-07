
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {scalar_t__ persistent_gnt_c; int persistent_gnts; } ;


 int BUG_ON (int) ;
 int RB_EMPTY_ROOT (int *) ;
 int free_persistent_gnts (struct xen_blkif_ring*,int *,scalar_t__) ;
 int shrink_free_pagepool (struct xen_blkif_ring*,int ) ;

void xen_blkbk_free_caches(struct xen_blkif_ring *ring)
{

 if (!RB_EMPTY_ROOT(&ring->persistent_gnts))
  free_persistent_gnts(ring, &ring->persistent_gnts,
   ring->persistent_gnt_c);

 BUG_ON(!RB_EMPTY_ROOT(&ring->persistent_gnts));
 ring->persistent_gnt_c = 0;


 shrink_free_pagepool(ring, 0 );
}
