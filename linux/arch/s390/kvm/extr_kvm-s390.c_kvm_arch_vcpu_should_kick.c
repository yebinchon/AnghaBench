
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int BUG () ;

int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
{

 BUG();
 return 0;
}
