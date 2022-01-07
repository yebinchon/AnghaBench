
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif {int free_work; int drain_complete; int refcnt; int domid; } ;
typedef int domid_t ;


 scalar_t__ BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST ;
 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 struct xen_blkif* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ MAX_INDIRECT_PAGES ;
 int atomic_set (int *,int) ;
 int init_completion (int *) ;
 struct xen_blkif* kmem_cache_zalloc (int ,int ) ;
 int xen_blkif_cachep ;
 int xen_blkif_deferred_free ;

__attribute__((used)) static struct xen_blkif *xen_blkif_alloc(domid_t domid)
{
 struct xen_blkif *blkif;

 BUILD_BUG_ON(MAX_INDIRECT_PAGES > BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST);

 blkif = kmem_cache_zalloc(xen_blkif_cachep, GFP_KERNEL);
 if (!blkif)
  return ERR_PTR(-ENOMEM);

 blkif->domid = domid;
 atomic_set(&blkif->refcnt, 1);
 init_completion(&blkif->drain_complete);
 INIT_WORK(&blkif->free_work, xen_blkif_deferred_free);

 return blkif;
}
