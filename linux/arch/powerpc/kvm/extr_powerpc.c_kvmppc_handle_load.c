
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int __kvmppc_handle_load (struct kvm_run*,struct kvm_vcpu*,unsigned int,unsigned int,int,int ) ;

int kvmppc_handle_load(struct kvm_run *run, struct kvm_vcpu *vcpu,
         unsigned int rt, unsigned int bytes,
         int is_default_endian)
{
 return __kvmppc_handle_load(run, vcpu, rt, bytes, is_default_endian, 0);
}
