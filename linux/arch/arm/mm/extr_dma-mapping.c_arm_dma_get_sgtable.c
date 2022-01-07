
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int sgl; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENXIO ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (size_t) ;
 unsigned long dma_to_pfn (struct device*,int ) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_set_page (int ,struct page*,int ,int ) ;
 scalar_t__ unlikely (int) ;

int arm_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
   void *cpu_addr, dma_addr_t handle, size_t size,
   unsigned long attrs)
{
 unsigned long pfn = dma_to_pfn(dev, handle);
 struct page *page;
 int ret;


 if (!pfn_valid(pfn))
  return -ENXIO;

 page = pfn_to_page(pfn);

 ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
 if (unlikely(ret))
  return ret;

 sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
 return 0;
}
