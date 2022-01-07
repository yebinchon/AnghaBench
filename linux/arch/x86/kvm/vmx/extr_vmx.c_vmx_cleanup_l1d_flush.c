
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L1D_CACHE_ORDER ;
 int VMENTER_L1D_FLUSH_AUTO ;
 int free_pages (unsigned long,int ) ;
 int l1tf_vmx_mitigation ;
 int * vmx_l1d_flush_pages ;

__attribute__((used)) static void vmx_cleanup_l1d_flush(void)
{
 if (vmx_l1d_flush_pages) {
  free_pages((unsigned long)vmx_l1d_flush_pages, L1D_CACHE_ORDER);
  vmx_l1d_flush_pages = ((void*)0);
 }

 l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_AUTO;
}
