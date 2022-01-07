
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_blkif {TYPE_1__* be; int vbd; } ;
struct TYPE_2__ {struct TYPE_2__* mode; } ;


 int WARN_ON (int ) ;
 int kfree (TYPE_1__*) ;
 int kmem_cache_free (int ,struct xen_blkif*) ;
 int xen_blkif_cachep ;
 int xen_blkif_disconnect (struct xen_blkif*) ;
 int xen_vbd_free (int *) ;

__attribute__((used)) static void xen_blkif_free(struct xen_blkif *blkif)
{
 WARN_ON(xen_blkif_disconnect(blkif));
 xen_vbd_free(&blkif->vbd);
 kfree(blkif->be->mode);
 kfree(blkif->be);


 kmem_cache_free(xen_blkif_cachep, blkif);
}
