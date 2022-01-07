
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ mmu_is_nested (struct kvm_vcpu*) ;
 int vcpu_match_mmio_gpa (struct kvm_vcpu*,int ) ;
 int vcpu_match_mmio_gva (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool mmio_info_in_cache(struct kvm_vcpu *vcpu, u64 addr, bool direct)
{




 if (mmu_is_nested(vcpu))
  return 0;

 if (direct)
  return vcpu_match_mmio_gpa(vcpu, addr);

 return vcpu_match_mmio_gva(vcpu, addr);
}
