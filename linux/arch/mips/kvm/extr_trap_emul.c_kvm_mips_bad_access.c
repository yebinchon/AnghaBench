
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int kvm_mips_bad_load (int ,int *,struct kvm_run*,struct kvm_vcpu*) ;
 int kvm_mips_bad_store (int ,int *,struct kvm_run*,struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_mips_bad_access(u32 cause, u32 *opc, struct kvm_run *run,
          struct kvm_vcpu *vcpu, bool store)
{
 if (store)
  return kvm_mips_bad_store(cause, opc, run, vcpu);
 else
  return kvm_mips_bad_load(cause, opc, run, vcpu);
}
