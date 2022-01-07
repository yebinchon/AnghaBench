
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int is_noslot_pfn (int ) ;
 int mark_mmio_spte (struct kvm_vcpu*,int *,int ,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool set_mmio_spte(struct kvm_vcpu *vcpu, u64 *sptep, gfn_t gfn,
     kvm_pfn_t pfn, unsigned access)
{
 if (unlikely(is_noslot_pfn(pfn))) {
  mark_mmio_spte(vcpu, sptep, gfn, access);
  return 1;
 }

 return 0;
}
