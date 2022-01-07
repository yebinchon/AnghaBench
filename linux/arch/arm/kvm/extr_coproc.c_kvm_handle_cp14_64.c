
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;
struct coproc_params {int dummy; } ;


 struct coproc_params decode_64bit_hsr (struct kvm_vcpu*) ;
 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 int trap_raz_wi (struct kvm_vcpu*,struct coproc_params*,int *) ;

int kvm_handle_cp14_64(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 struct coproc_params params = decode_64bit_hsr(vcpu);


 trap_raz_wi(vcpu, &params, ((void*)0));


 kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
 return 1;
}
