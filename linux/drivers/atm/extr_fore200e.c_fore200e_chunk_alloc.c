
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fore200e {int dev; } ;
struct chunk {int alloc_size; int direction; int * alloc_addr; int dma_addr; int * align_addr; } ;


 int ENOMEM ;
 unsigned long FORE200E_ALIGN (int *,int) ;
 int GFP_KERNEL ;
 int dma_map_single (int ,int *,int,int) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int
fore200e_chunk_alloc(struct fore200e* fore200e, struct chunk* chunk, int size, int alignment, int direction)
{
    unsigned long offset = 0;

    if (alignment <= sizeof(int))
 alignment = 0;

    chunk->alloc_size = size + alignment;
    chunk->direction = direction;

    chunk->alloc_addr = kzalloc(chunk->alloc_size, GFP_KERNEL);
    if (chunk->alloc_addr == ((void*)0))
 return -ENOMEM;

    if (alignment > 0)
 offset = FORE200E_ALIGN(chunk->alloc_addr, alignment);

    chunk->align_addr = chunk->alloc_addr + offset;

    chunk->dma_addr = dma_map_single(fore200e->dev, chunk->align_addr,
         size, direction);
    if (dma_mapping_error(fore200e->dev, chunk->dma_addr)) {
 kfree(chunk->alloc_addr);
 return -ENOMEM;
    }
    return 0;
}
