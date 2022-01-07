
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* gprs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MAX_HYPCALL_ARGS ;
 int kvm_mips_hypercall (struct kvm_vcpu*,unsigned long,unsigned long*,unsigned long*) ;

int kvm_mips_handle_hypcall(struct kvm_vcpu *vcpu)
{
 unsigned long num, args[MAX_HYPCALL_ARGS];


 num = vcpu->arch.gprs[2];
 args[0] = vcpu->arch.gprs[4];
 args[1] = vcpu->arch.gprs[5];
 args[2] = vcpu->arch.gprs[6];
 args[3] = vcpu->arch.gprs[7];

 return kvm_mips_hypercall(vcpu, num,
      args, &vcpu->arch.gprs[2] );
}
