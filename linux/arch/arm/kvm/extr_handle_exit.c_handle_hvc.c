
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hvc_exit_stat; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct kvm_run {int dummy; } ;


 int kvm_hvc_call_handler (struct kvm_vcpu*) ;
 int kvm_vcpu_hvc_get_imm (struct kvm_vcpu*) ;
 int trace_kvm_hvc (int ,int ,int ) ;
 int * vcpu_pc (struct kvm_vcpu*) ;
 int * vcpu_reg (struct kvm_vcpu*,int ) ;
 int vcpu_set_reg (struct kvm_vcpu*,int ,unsigned long) ;

__attribute__((used)) static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 int ret;

 trace_kvm_hvc(*vcpu_pc(vcpu), *vcpu_reg(vcpu, 0),
        kvm_vcpu_hvc_get_imm(vcpu));
 vcpu->stat.hvc_exit_stat++;

 ret = kvm_hvc_call_handler(vcpu);
 if (ret < 0) {
  vcpu_set_reg(vcpu, 0, ~0UL);
  return 1;
 }

 return ret;
}
