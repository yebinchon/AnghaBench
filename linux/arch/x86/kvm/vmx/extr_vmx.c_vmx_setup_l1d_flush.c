
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
typedef enum vmx_l1d_flush_state { ____Placeholder_vmx_l1d_flush_state } vmx_l1d_flush_state ;


 int ARCH_CAP_SKIP_VMENTRY_L1DFLUSH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int L1D_CACHE_ORDER ;






 int MSR_IA32_ARCH_CAPABILITIES ;
 unsigned int PAGE_SIZE ;
 int VMENTER_L1D_FLUSH_ALWAYS ;
 int VMENTER_L1D_FLUSH_AUTO ;
 int VMENTER_L1D_FLUSH_COND ;
 int VMENTER_L1D_FLUSH_EPT_DISABLED ;
 int VMENTER_L1D_FLUSH_NEVER ;
 int VMENTER_L1D_FLUSH_NOT_REQUIRED ;
 int X86_BUG_L1TF ;
 int X86_FEATURE_ARCH_CAPABILITIES ;
 int X86_FEATURE_FLUSH_L1D ;
 struct page* alloc_pages (int ,int) ;
 scalar_t__ boot_cpu_has (int ) ;
 int boot_cpu_has_bug (int ) ;
 int enable_ept ;
 int l1tf_mitigation ;
 int l1tf_vmx_mitigation ;
 int memset (scalar_t__,unsigned int,unsigned int) ;
 scalar_t__ page_address (struct page*) ;
 int rdmsrl (int ,int) ;
 int static_branch_disable (int *) ;
 int static_branch_enable (int *) ;
 int vmx_l1d_flush_cond ;
 scalar_t__ vmx_l1d_flush_pages ;
 int vmx_l1d_should_flush ;

__attribute__((used)) static int vmx_setup_l1d_flush(enum vmx_l1d_flush_state l1tf)
{
 struct page *page;
 unsigned int i;

 if (!boot_cpu_has_bug(X86_BUG_L1TF)) {
  l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_NOT_REQUIRED;
  return 0;
 }

 if (!enable_ept) {
  l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_EPT_DISABLED;
  return 0;
 }

 if (boot_cpu_has(X86_FEATURE_ARCH_CAPABILITIES)) {
  u64 msr;

  rdmsrl(MSR_IA32_ARCH_CAPABILITIES, msr);
  if (msr & ARCH_CAP_SKIP_VMENTRY_L1DFLUSH) {
   l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_NOT_REQUIRED;
   return 0;
  }
 }


 if (l1tf == VMENTER_L1D_FLUSH_AUTO) {
  switch (l1tf_mitigation) {
  case 128:
   l1tf = VMENTER_L1D_FLUSH_NEVER;
   break;
  case 131:
  case 133:
  case 132:
   l1tf = VMENTER_L1D_FLUSH_COND;
   break;
  case 130:
  case 129:
   l1tf = VMENTER_L1D_FLUSH_ALWAYS;
   break;
  }
 } else if (l1tf_mitigation == 129) {
  l1tf = VMENTER_L1D_FLUSH_ALWAYS;
 }

 if (l1tf != VMENTER_L1D_FLUSH_NEVER && !vmx_l1d_flush_pages &&
     !boot_cpu_has(X86_FEATURE_FLUSH_L1D)) {




  page = alloc_pages(GFP_KERNEL, L1D_CACHE_ORDER);
  if (!page)
   return -ENOMEM;
  vmx_l1d_flush_pages = page_address(page);






  for (i = 0; i < 1u << L1D_CACHE_ORDER; ++i) {
   memset(vmx_l1d_flush_pages + i * PAGE_SIZE, i + 1,
          PAGE_SIZE);
  }
 }

 l1tf_vmx_mitigation = l1tf;

 if (l1tf != VMENTER_L1D_FLUSH_NEVER)
  static_branch_enable(&vmx_l1d_should_flush);
 else
  static_branch_disable(&vmx_l1d_should_flush);

 if (l1tf == VMENTER_L1D_FLUSH_COND)
  static_branch_enable(&vmx_l1d_flush_cond);
 else
  static_branch_disable(&vmx_l1d_flush_cond);
 return 0;
}
