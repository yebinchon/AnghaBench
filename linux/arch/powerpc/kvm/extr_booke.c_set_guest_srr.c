
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvmppc_set_srr0 (struct kvm_vcpu*,unsigned long) ;
 int kvmppc_set_srr1 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void set_guest_srr(struct kvm_vcpu *vcpu, unsigned long srr0, u32 srr1)
{
 kvmppc_set_srr0(vcpu, srr0);
 kvmppc_set_srr1(vcpu, srr1);
}
