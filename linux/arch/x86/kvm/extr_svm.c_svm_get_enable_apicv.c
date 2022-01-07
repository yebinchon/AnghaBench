
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 scalar_t__ avic ;
 scalar_t__ irqchip_split (int ) ;

__attribute__((used)) static bool svm_get_enable_apicv(struct kvm_vcpu *vcpu)
{
 return avic && irqchip_split(vcpu->kvm);
}
