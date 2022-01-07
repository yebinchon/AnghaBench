
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gva_t ;
typedef int gfn_t ;


 int is_error_pfn (int ) ;
 int is_noslot_pfn (int ) ;
 int kvm_handle_bad_page (struct kvm_vcpu*,int ,int ) ;
 unsigned int shadow_mmio_access_mask ;
 scalar_t__ unlikely (int ) ;
 int vcpu_cache_mmio_info (struct kvm_vcpu*,int ,int ,unsigned int) ;

__attribute__((used)) static bool handle_abnormal_pfn(struct kvm_vcpu *vcpu, gva_t gva, gfn_t gfn,
    kvm_pfn_t pfn, unsigned access, int *ret_val)
{

 if (unlikely(is_error_pfn(pfn))) {
  *ret_val = kvm_handle_bad_page(vcpu, gfn, pfn);
  return 1;
 }

 if (unlikely(is_noslot_pfn(pfn)))
  vcpu_cache_mmio_info(vcpu, gva, gfn,
         access & shadow_mmio_access_mask);

 return 0;
}
