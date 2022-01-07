
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int cp14_regs ;
 int kvm_handle_cp_32 (struct kvm_vcpu*,int ,int ,int *,int ) ;

int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 return kvm_handle_cp_32(vcpu,
    cp14_regs, ARRAY_SIZE(cp14_regs),
    ((void*)0), 0);
}
