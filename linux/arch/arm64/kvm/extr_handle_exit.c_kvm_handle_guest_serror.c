
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ arm64_is_fatal_ras_serror (int *,int ) ;
 int arm64_is_ras_serror (int ) ;
 int kvm_inject_vabt (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_handle_guest_serror(struct kvm_vcpu *vcpu, u32 esr)
{
 if (!arm64_is_ras_serror(esr) || arm64_is_fatal_ras_serror(((void*)0), esr))
  kvm_inject_vabt(vcpu);
}
