
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;



__attribute__((used)) static bool svm_dy_apicv_has_pending_interrupt(struct kvm_vcpu *vcpu)
{
 return 0;
}
