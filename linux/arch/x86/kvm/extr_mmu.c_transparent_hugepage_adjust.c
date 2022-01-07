
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef unsigned long kvm_pfn_t ;
typedef unsigned long gfn_t ;


 int KVM_PAGES_PER_HPAGE (int) ;
 int PT_DIRECTORY_LEVEL ;
 int PT_PAGE_TABLE_LEVEL ;
 scalar_t__ PageTransCompoundMap (int ) ;
 int VM_BUG_ON (int) ;
 int is_error_noslot_pfn (unsigned long) ;
 int kvm_get_pfn (unsigned long) ;
 int kvm_is_reserved_pfn (unsigned long) ;
 int kvm_is_zone_device_pfn (unsigned long) ;
 int kvm_release_pfn_clean (unsigned long) ;
 int mmu_gfn_lpage_is_disallowed (struct kvm_vcpu*,unsigned long,int) ;
 int pfn_to_page (unsigned long) ;

__attribute__((used)) static void transparent_hugepage_adjust(struct kvm_vcpu *vcpu,
     gfn_t gfn, kvm_pfn_t *pfnp,
     int *levelp)
{
 kvm_pfn_t pfn = *pfnp;
 int level = *levelp;







 if (!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn) &&
     !kvm_is_zone_device_pfn(pfn) && level == PT_PAGE_TABLE_LEVEL &&
     PageTransCompoundMap(pfn_to_page(pfn)) &&
     !mmu_gfn_lpage_is_disallowed(vcpu, gfn, PT_DIRECTORY_LEVEL)) {
  unsigned long mask;
  *levelp = level = PT_DIRECTORY_LEVEL;
  mask = KVM_PAGES_PER_HPAGE(level) - 1;
  VM_BUG_ON((gfn & mask) != (pfn & mask));
  if (pfn & mask) {
   kvm_release_pfn_clean(pfn);
   pfn &= ~mask;
   kvm_get_pfn(pfn);
   *pfnp = pfn;
  }
 }
}
