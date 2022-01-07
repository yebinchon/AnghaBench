
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fore200e {int dev; } ;
struct chunk {int alloc_addr; int direction; int dma_size; int dma_addr; } ;


 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void
fore200e_chunk_free(struct fore200e* fore200e, struct chunk* chunk)
{
    dma_unmap_single(fore200e->dev, chunk->dma_addr, chunk->dma_size,
       chunk->direction);
    kfree(chunk->alloc_addr);
}
