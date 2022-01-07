
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct gfn_to_hva_cache {scalar_t__ gpa; unsigned long len; } ;
struct TYPE_3__ {scalar_t__ msr_val; struct gfn_to_hva_cache data; } ;
struct TYPE_4__ {TYPE_1__ pv_eoi; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;


 int IS_ALIGNED (scalar_t__,int) ;
 scalar_t__ KVM_MSR_ENABLED ;
 int kvm_gfn_to_hva_cache_init (int ,struct gfn_to_hva_cache*,scalar_t__,unsigned long) ;
 int pv_eoi_enabled (struct kvm_vcpu*) ;

int kvm_lapic_enable_pv_eoi(struct kvm_vcpu *vcpu, u64 data, unsigned long len)
{
 u64 addr = data & ~KVM_MSR_ENABLED;
 struct gfn_to_hva_cache *ghc = &vcpu->arch.pv_eoi.data;
 unsigned long new_len;

 if (!IS_ALIGNED(addr, 4))
  return 1;

 vcpu->arch.pv_eoi.msr_val = data;
 if (!pv_eoi_enabled(vcpu))
  return 0;

 if (addr == ghc->gpa && len <= ghc->len)
  new_len = ghc->len;
 else
  new_len = len;

 return kvm_gfn_to_hva_cache_init(vcpu->kvm, ghc, addr, new_len);
}
