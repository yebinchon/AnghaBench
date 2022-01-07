
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fore200e {int dev; } ;
struct chunk {int dma_addr; int alloc_addr; int alloc_size; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void
fore200e_dma_chunk_free(struct fore200e* fore200e, struct chunk* chunk)
{
 dma_free_coherent(fore200e->dev, chunk->alloc_size, chunk->alloc_addr,
     chunk->dma_addr);
}
