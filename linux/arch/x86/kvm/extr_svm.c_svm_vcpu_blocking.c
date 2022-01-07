
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int avic_set_running (struct kvm_vcpu*,int) ;

__attribute__((used)) static void svm_vcpu_blocking(struct kvm_vcpu *vcpu)
{
 avic_set_running(vcpu, 0);
}
