
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef void page ;
struct device {int dummy; } ;
struct arm_dma_buffer {int list; void* virt; TYPE_1__* allocator; } ;
struct arm_dma_alloc_args {int gfp; void const* caller; int want_vaddr; int coherent_flag; int prot; int size; struct device* dev; } ;
typedef int pgprot_t ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_5__ {void* (* alloc ) (struct arm_dma_alloc_args*,void**) ;} ;


 int COHERENT ;
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_MAPPING_ERROR ;
 int GFP_DMA ;
 int NORMAL ;
 int PAGE_ALIGN (size_t) ;
 int __GFP_COMP ;
 int __GFP_DMA ;
 int __GFP_DMA32 ;
 int __GFP_HIGHMEM ;
 int arm_dma_bufs ;
 int arm_dma_bufs_lock ;
 TYPE_1__ cma_allocator ;
 int dev_get_cma_area (struct device*) ;
 int dev_warn (struct device*,char*,size_t,int) ;
 int get_coherent_dma_mask (struct device*) ;
 int gfpflags_allow_blocking (int) ;
 int kfree (struct arm_dma_buffer*) ;
 struct arm_dma_buffer* kzalloc (int,int) ;
 int list_add (int *,int *) ;
 int page_to_pfn (void*) ;
 int pfn_to_dma (struct device*,int ) ;
 TYPE_1__ pool_allocator ;
 TYPE_1__ remap_allocator ;
 TYPE_1__ simple_allocator ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* stub1 (struct arm_dma_alloc_args*,void**) ;

__attribute__((used)) static void *__dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
    gfp_t gfp, pgprot_t prot, bool is_coherent,
    unsigned long attrs, const void *caller)
{
 u64 mask = get_coherent_dma_mask(dev);
 struct page *page = ((void*)0);
 void *addr;
 bool allowblock, cma;
 struct arm_dma_buffer *buf;
 struct arm_dma_alloc_args args = {
  .dev = dev,
  .size = PAGE_ALIGN(size),
  .gfp = gfp,
  .prot = prot,
  .caller = caller,
  .want_vaddr = ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) == 0),
  .coherent_flag = is_coherent ? COHERENT : NORMAL,
 };
 if (!mask)
  return ((void*)0);

 buf = kzalloc(sizeof(*buf),
        gfp & ~(__GFP_DMA | __GFP_DMA32 | __GFP_HIGHMEM));
 if (!buf)
  return ((void*)0);

 if (mask < 0xffffffffULL)
  gfp |= GFP_DMA;
 gfp &= ~(__GFP_COMP);
 args.gfp = gfp;

 *handle = DMA_MAPPING_ERROR;
 allowblock = gfpflags_allow_blocking(gfp);
 cma = allowblock ? dev_get_cma_area(dev) : 0;

 if (cma)
  buf->allocator = &cma_allocator;
 else if (is_coherent)
  buf->allocator = &simple_allocator;
 else if (allowblock)
  buf->allocator = &remap_allocator;
 else
  buf->allocator = &pool_allocator;

 addr = buf->allocator->alloc(&args, &page);

 if (page) {
  unsigned long flags;

  *handle = pfn_to_dma(dev, page_to_pfn(page));
  buf->virt = args.want_vaddr ? addr : page;

  spin_lock_irqsave(&arm_dma_bufs_lock, flags);
  list_add(&buf->list, &arm_dma_bufs);
  spin_unlock_irqrestore(&arm_dma_bufs_lock, flags);
 } else {
  kfree(buf);
 }

 return args.want_vaddr ? addr : page;
}
