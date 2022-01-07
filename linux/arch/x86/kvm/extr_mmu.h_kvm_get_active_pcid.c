
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long kvm_get_pcid (struct kvm_vcpu*,int ) ;
 int kvm_read_cr3 (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned long kvm_get_active_pcid(struct kvm_vcpu *vcpu)
{
 return kvm_get_pcid(vcpu, kvm_read_cr3(vcpu));
}
