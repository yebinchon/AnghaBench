
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msr; } ;
struct TYPE_4__ {int ceded; scalar_t__ prodded; TYPE_1__ shregs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int MSR_EE ;
 int smp_mb () ;

__attribute__((used)) static void kvmppc_nested_cede(struct kvm_vcpu *vcpu)
{
 vcpu->arch.shregs.msr |= MSR_EE;
 vcpu->arch.ceded = 1;
 smp_mb();
 if (vcpu->arch.prodded) {
  vcpu->arch.prodded = 0;
  smp_mb();
  vcpu->arch.ceded = 0;
 }
}
