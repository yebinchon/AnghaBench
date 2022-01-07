
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {unsigned long hior; } ;


 int is_kvmppc_hv_enabled (int ) ;
 TYPE_1__* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned long kvmppc_interrupt_offset(struct kvm_vcpu *vcpu)
{
 if (!is_kvmppc_hv_enabled(vcpu->kvm))
  return to_book3s(vcpu)->hior;
 return 0;
}
