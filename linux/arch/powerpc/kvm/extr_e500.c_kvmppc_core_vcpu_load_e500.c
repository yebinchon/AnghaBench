
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_booke_vcpu_load (struct kvm_vcpu*,int) ;
 int kvmppc_e500_recalc_shadow_pid (int ) ;
 int to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_core_vcpu_load_e500(struct kvm_vcpu *vcpu, int cpu)
{
 kvmppc_booke_vcpu_load(vcpu, cpu);


 kvmppc_e500_recalc_shadow_pid(to_e500(vcpu));
}
