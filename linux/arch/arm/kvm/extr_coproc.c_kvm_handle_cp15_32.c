
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;
struct coproc_params {int dummy; } ;


 struct coproc_params decode_32bit_hsr (struct kvm_vcpu*) ;
 int emulate_cp15 (struct kvm_vcpu*,struct coproc_params*) ;

int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 struct coproc_params params = decode_32bit_hsr(vcpu);
 return emulate_cp15(vcpu, &params);
}
