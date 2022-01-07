
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {TYPE_1__* pdev; } ;
struct kmem_cache {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int dma_map_single (struct device*,void*,int ,int) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 void* kmem_cache_alloc (struct kmem_cache*,int ) ;
 int kmem_cache_free (struct kmem_cache*,void*) ;
 int kmem_cache_size (struct kmem_cache*) ;

__attribute__((used)) static void *skd_alloc_dma(struct skd_device *skdev, struct kmem_cache *s,
      dma_addr_t *dma_handle, gfp_t gfp,
      enum dma_data_direction dir)
{
 struct device *dev = &skdev->pdev->dev;
 void *buf;

 buf = kmem_cache_alloc(s, gfp);
 if (!buf)
  return ((void*)0);
 *dma_handle = dma_map_single(dev, buf,
         kmem_cache_size(s), dir);
 if (dma_mapping_error(dev, *dma_handle)) {
  kmem_cache_free(s, buf);
  buf = ((void*)0);
 }
 return buf;
}
