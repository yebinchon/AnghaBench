
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_mtrr {int * var_ranges; } ;
struct TYPE_2__ {struct kvm_mtrr mtrr_state; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
typedef int gfn_t ;


 int MSR_IA32_CR_PAT ;
 int MSR_MTRRdefType ;
 scalar_t__ fixed_msr_to_range (int,int*,int*) ;
 int fixed_mtrr_is_enabled (struct kvm_mtrr*) ;
 int gpa_to_gfn (int) ;
 int kvm_arch_has_noncoherent_dma (int ) ;
 int kvm_zap_gfn_range (int ,int ,int ) ;
 int mtrr_is_enabled (struct kvm_mtrr*) ;
 int tdp_enabled ;
 int var_mtrr_range (int *,int*,int*) ;

__attribute__((used)) static void update_mtrr(struct kvm_vcpu *vcpu, u32 msr)
{
 struct kvm_mtrr *mtrr_state = &vcpu->arch.mtrr_state;
 gfn_t start, end;
 int index;

 if (msr == MSR_IA32_CR_PAT || !tdp_enabled ||
       !kvm_arch_has_noncoherent_dma(vcpu->kvm))
  return;

 if (!mtrr_is_enabled(mtrr_state) && msr != MSR_MTRRdefType)
  return;


 if (fixed_msr_to_range(msr, &start, &end)) {
  if (!fixed_mtrr_is_enabled(mtrr_state))
   return;
 } else if (msr == MSR_MTRRdefType) {
  start = 0x0;
  end = ~0ULL;
 } else {

  index = (msr - 0x200) / 2;
  var_mtrr_range(&mtrr_state->var_ranges[index], &start, &end);
 }

 kvm_zap_gfn_range(vcpu->kvm, gpa_to_gfn(start), gpa_to_gfn(end));
}
