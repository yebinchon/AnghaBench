
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_mapping {int direction; int size; int dma_addr; int device; } ;


 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (void*) ;

__attribute__((used)) static void xilly_of_unmap(void *ptr)
{
 struct xilly_mapping *data = ptr;

 dma_unmap_single(data->device, data->dma_addr,
    data->size, data->direction);

 kfree(ptr);
}
