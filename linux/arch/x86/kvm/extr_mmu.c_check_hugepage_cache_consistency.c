
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gfn_t ;


 int KVM_PAGES_PER_HPAGE (int) ;
 int kvm_mtrr_check_gfn_range_consistency (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static bool
check_hugepage_cache_consistency(struct kvm_vcpu *vcpu, gfn_t gfn, int level)
{
 int page_num = KVM_PAGES_PER_HPAGE(level);

 gfn &= ~(page_num - 1);

 return kvm_mtrr_check_gfn_range_consistency(vcpu, gfn, page_num);
}
