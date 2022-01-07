
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_type; int sane; scalar_t__ papr_enabled; int pvr; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int CPU_FTR_EMB_HV ;
 int EINVAL ;
 scalar_t__ KVM_CPU_3S_64 ;
 int cpu_has_feature (int ) ;
 scalar_t__ is_kvmppc_hv_enabled (int ) ;

int kvmppc_sanity_check(struct kvm_vcpu *vcpu)
{
 int r = 0;


 if (!vcpu->arch.pvr)
  goto out;


 if ((vcpu->arch.cpu_type != KVM_CPU_3S_64) && vcpu->arch.papr_enabled)
  goto out;


 if (!vcpu->arch.papr_enabled && is_kvmppc_hv_enabled(vcpu->kvm))
  goto out;






 r = 1;

out:
 vcpu->arch.sane = r;
 return r ? 0 : -EINVAL;
}
