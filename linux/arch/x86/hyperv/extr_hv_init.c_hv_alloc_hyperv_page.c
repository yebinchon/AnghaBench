
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 scalar_t__ HV_HYP_PAGE_SIZE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;

void *hv_alloc_hyperv_page(void)
{
 BUILD_BUG_ON(PAGE_SIZE != HV_HYP_PAGE_SIZE);

 return (void *)__get_free_page(GFP_KERNEL);
}
