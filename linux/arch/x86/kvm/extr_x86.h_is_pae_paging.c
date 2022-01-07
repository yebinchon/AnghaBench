
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int is_long_mode (struct kvm_vcpu*) ;
 scalar_t__ is_pae (struct kvm_vcpu*) ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool is_pae_paging(struct kvm_vcpu *vcpu)
{
 return !is_long_mode(vcpu) && is_pae(vcpu) && is_paging(vcpu);
}
