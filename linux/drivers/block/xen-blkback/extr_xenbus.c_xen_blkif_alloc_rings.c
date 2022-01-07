
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int active; int st_print; struct xen_blkif* blkif; int shutdown_wq; int pending_free_wq; int pending_free_lock; int free_pages; int free_pages_lock; int persistent_purge_work; int persistent_purge_list; int pending_free; int wq; int blk_ring_lock; } ;
struct xen_blkif {unsigned int nr_rings; struct xen_blkif_ring* rings; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 struct xen_blkif_ring* kcalloc (unsigned int,int,int ) ;
 int spin_lock_init (int *) ;
 int xen_blkbk_unmap_purged_grants ;

__attribute__((used)) static int xen_blkif_alloc_rings(struct xen_blkif *blkif)
{
 unsigned int r;

 blkif->rings = kcalloc(blkif->nr_rings, sizeof(struct xen_blkif_ring),
          GFP_KERNEL);
 if (!blkif->rings)
  return -ENOMEM;

 for (r = 0; r < blkif->nr_rings; r++) {
  struct xen_blkif_ring *ring = &blkif->rings[r];

  spin_lock_init(&ring->blk_ring_lock);
  init_waitqueue_head(&ring->wq);
  INIT_LIST_HEAD(&ring->pending_free);
  INIT_LIST_HEAD(&ring->persistent_purge_list);
  INIT_WORK(&ring->persistent_purge_work, xen_blkbk_unmap_purged_grants);
  spin_lock_init(&ring->free_pages_lock);
  INIT_LIST_HEAD(&ring->free_pages);

  spin_lock_init(&ring->pending_free_lock);
  init_waitqueue_head(&ring->pending_free_wq);
  init_waitqueue_head(&ring->shutdown_wq);
  ring->blkif = blkif;
  ring->st_print = jiffies;
  ring->active = 1;
 }

 return 0;
}
