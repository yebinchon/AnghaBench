
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct skd_device {int sglist_cache; } ;
struct fit_sg_descriptor {int next_desc_ptr; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int GFP_DMA ;
 int __GFP_ZERO ;
 struct fit_sg_descriptor* skd_alloc_dma (struct skd_device*,int ,int*,int,int ) ;

__attribute__((used)) static struct fit_sg_descriptor *skd_cons_sg_list(struct skd_device *skdev,
        u32 n_sg,
        dma_addr_t *ret_dma_addr)
{
 struct fit_sg_descriptor *sg_list;

 sg_list = skd_alloc_dma(skdev, skdev->sglist_cache, ret_dma_addr,
    GFP_DMA | __GFP_ZERO, DMA_TO_DEVICE);

 if (sg_list != ((void*)0)) {
  uint64_t dma_address = *ret_dma_addr;
  u32 i;

  for (i = 0; i < n_sg - 1; i++) {
   uint64_t ndp_off;
   ndp_off = (i + 1) * sizeof(struct fit_sg_descriptor);

   sg_list[i].next_desc_ptr = dma_address + ndp_off;
  }
  sg_list[i].next_desc_ptr = 0LL;
 }

 return sg_list;
}
