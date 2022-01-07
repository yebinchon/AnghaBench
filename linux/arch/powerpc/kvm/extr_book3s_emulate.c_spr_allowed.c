
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ papr_enabled; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum priv_level { ____Placeholder_priv_level } priv_level ;


 int MSR_PR ;
 int PRIV_PROBLEM ;
 int PRIV_SUPER ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;

__attribute__((used)) static bool spr_allowed(struct kvm_vcpu *vcpu, enum priv_level level)
{

 if (vcpu->arch.papr_enabled && (level > PRIV_SUPER))
  return 0;


 if ((kvmppc_get_msr(vcpu) & MSR_PR) && level > PRIV_PROBLEM)
  return 0;

 return 1;
}
