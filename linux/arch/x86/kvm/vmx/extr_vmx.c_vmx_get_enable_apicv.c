
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int enable_apicv ;

__attribute__((used)) static bool vmx_get_enable_apicv(struct kvm_vcpu *vcpu)
{
 return enable_apicv;
}
