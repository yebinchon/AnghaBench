
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_change_data {void* clear_mask; void* set_mask; } ;
typedef void* pgprot_t ;


 int apply_to_page_range (int *,unsigned long,unsigned long,int ,struct page_change_data*) ;
 int change_page_range ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int init_mm ;

__attribute__((used)) static int __change_memory_common(unsigned long start, unsigned long size,
    pgprot_t set_mask, pgprot_t clear_mask)
{
 struct page_change_data data;
 int ret;

 data.set_mask = set_mask;
 data.clear_mask = clear_mask;

 ret = apply_to_page_range(&init_mm, start, size, change_page_range,
     &data);

 flush_tlb_kernel_range(start, start + size);
 return ret;
}
