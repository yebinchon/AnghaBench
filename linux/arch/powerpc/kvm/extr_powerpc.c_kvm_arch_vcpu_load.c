
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vrsave; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int SPRN_VRSAVE ;
 int kvmppc_core_vcpu_load (struct kvm_vcpu*,int) ;
 int mtspr (int ,int ) ;

void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 kvmppc_core_vcpu_load(vcpu, cpu);
}
