
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_mapping {size_t size; int direction; int dma_addr; int device; } ;
struct xilly_endpoint {int dev; } ;
typedef int dma_addr_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_add_action_or_reset (int ,int ,struct xilly_mapping*) ;
 int dma_map_single (int ,void*,size_t,int) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int kfree (struct xilly_mapping*) ;
 struct xilly_mapping* kzalloc (int,int ) ;
 int xilly_of_unmap ;

__attribute__((used)) static int xilly_map_single_of(struct xilly_endpoint *ep,
          void *ptr,
          size_t size,
          int direction,
          dma_addr_t *ret_dma_handle
 )
{
 dma_addr_t addr;
 struct xilly_mapping *this;

 this = kzalloc(sizeof(*this), GFP_KERNEL);
 if (!this)
  return -ENOMEM;

 addr = dma_map_single(ep->dev, ptr, size, direction);

 if (dma_mapping_error(ep->dev, addr)) {
  kfree(this);
  return -ENODEV;
 }

 this->device = ep->dev;
 this->dma_addr = addr;
 this->size = size;
 this->direction = direction;

 *ret_dma_handle = addr;

 return devm_add_action_or_reset(ep->dev, xilly_of_unmap, this);
}
