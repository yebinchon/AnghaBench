
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fore200e {int dev; } ;
struct chunk {int alloc_size; scalar_t__ alloc_addr; scalar_t__ align_addr; int dma_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int
fore200e_dma_chunk_alloc(struct fore200e *fore200e, struct chunk *chunk,
  int size, int nbr, int alignment)
{

 chunk->alloc_size = size * nbr;
 chunk->alloc_addr = dma_alloc_coherent(fore200e->dev, chunk->alloc_size,
            &chunk->dma_addr, GFP_KERNEL);
 if (!chunk->alloc_addr)
  return -ENOMEM;
 chunk->align_addr = chunk->alloc_addr;
 return 0;
}
