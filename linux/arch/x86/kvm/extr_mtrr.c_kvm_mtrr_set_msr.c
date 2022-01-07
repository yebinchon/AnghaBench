
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {void* deftype; int * fixed_ranges; } ;
struct TYPE_3__ {void* pat; TYPE_2__ mtrr_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ MSR_IA32_CR_PAT ;
 scalar_t__ MSR_MTRRdefType ;
 int fixed_msr_to_range_index (scalar_t__) ;
 int kvm_mtrr_valid (struct kvm_vcpu*,scalar_t__,void*) ;
 int set_var_mtrr_msr (struct kvm_vcpu*,scalar_t__,void*) ;
 int update_mtrr (struct kvm_vcpu*,scalar_t__) ;

int kvm_mtrr_set_msr(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
 int index;

 if (!kvm_mtrr_valid(vcpu, msr, data))
  return 1;

 index = fixed_msr_to_range_index(msr);
 if (index >= 0)
  *(u64 *)&vcpu->arch.mtrr_state.fixed_ranges[index] = data;
 else if (msr == MSR_MTRRdefType)
  vcpu->arch.mtrr_state.deftype = data;
 else if (msr == MSR_IA32_CR_PAT)
  vcpu->arch.pat = data;
 else
  set_var_mtrr_msr(vcpu, msr, data);

 update_mtrr(vcpu, msr);
 return 0;
}
