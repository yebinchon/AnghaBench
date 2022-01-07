
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {TYPE_1__* pdev; } ;
struct kmem_cache {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int dma_unmap_single (int *,int ,int ,int) ;
 int kmem_cache_free (struct kmem_cache*,void*) ;
 int kmem_cache_size (struct kmem_cache*) ;

__attribute__((used)) static void skd_free_dma(struct skd_device *skdev, struct kmem_cache *s,
    void *vaddr, dma_addr_t dma_handle,
    enum dma_data_direction dir)
{
 if (!vaddr)
  return;

 dma_unmap_single(&skdev->pdev->dev, dma_handle,
    kmem_cache_size(s), dir);
 kmem_cache_free(s, vaddr);
}
