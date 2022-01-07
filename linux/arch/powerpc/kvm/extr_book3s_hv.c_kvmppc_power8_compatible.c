
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vcore; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {scalar_t__ arch_compat; } ;


 int CPU_FTR_ARCH_207S ;
 scalar_t__ PVR_ARCH_207 ;
 scalar_t__ cpu_has_feature (int ) ;

__attribute__((used)) static bool kvmppc_power8_compatible(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.vcore->arch_compat >= PVR_ARCH_207)
  return 1;
 if ((!vcpu->arch.vcore->arch_compat) &&
     cpu_has_feature(CPU_FTR_ARCH_207S))
  return 1;
 return 0;
}
