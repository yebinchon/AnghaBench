
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int kvm_inject_undefined (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
{

 kvm_inject_undefined(vcpu);
 return 1;
}
