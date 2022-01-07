
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct hv_vp_assist_page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HV_X64_MSR_VP_ASSIST_PAGE ;
 scalar_t__ HV_X64_MSR_VP_ASSIST_PAGE_ADDRESS_SHIFT ;
 scalar_t__ HV_X64_MSR_VP_ASSIST_PAGE_ENABLE ;
 int PAGE_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 struct hv_vp_assist_page* __vmalloc (int ,int,int ) ;
 struct page* alloc_page (int) ;
 int hv_get_vp_index (scalar_t__) ;
 scalar_t__ hv_max_vp_index ;
 struct hv_vp_assist_page** hv_vp_assist_page ;
 scalar_t__* hv_vp_index ;
 int hyperv_pcpu_input_arg ;
 void* page_address (struct page*) ;
 size_t smp_processor_id () ;
 scalar_t__ this_cpu_ptr (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vmalloc_to_pfn (struct hv_vp_assist_page*) ;
 int wrmsrl (int ,scalar_t__) ;

__attribute__((used)) static int hv_cpu_init(unsigned int cpu)
{
 u64 msr_vp_index;
 struct hv_vp_assist_page **hvp = &hv_vp_assist_page[smp_processor_id()];
 void **input_arg;
 struct page *pg;

 input_arg = (void **)this_cpu_ptr(hyperv_pcpu_input_arg);
 pg = alloc_page(GFP_KERNEL);
 if (unlikely(!pg))
  return -ENOMEM;
 *input_arg = page_address(pg);

 hv_get_vp_index(msr_vp_index);

 hv_vp_index[smp_processor_id()] = msr_vp_index;

 if (msr_vp_index > hv_max_vp_index)
  hv_max_vp_index = msr_vp_index;

 if (!hv_vp_assist_page)
  return 0;
 if (!*hvp) {
  *hvp = __vmalloc(PAGE_SIZE, GFP_KERNEL | __GFP_ZERO,
     PAGE_KERNEL);
 }

 if (*hvp) {
  u64 val;

  val = vmalloc_to_pfn(*hvp);
  val = (val << HV_X64_MSR_VP_ASSIST_PAGE_ADDRESS_SHIFT) |
   HV_X64_MSR_VP_ASSIST_PAGE_ENABLE;

  wrmsrl(HV_X64_MSR_VP_ASSIST_PAGE, val);
 }

 return 0;
}
