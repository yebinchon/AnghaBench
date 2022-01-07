
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_ioapic {int lock; } ;
struct TYPE_3__ {struct kvm_ioapic* vioapic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int __kvm_ioapic_update_eoi (struct kvm_vcpu*,struct kvm_ioapic*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_ioapic_update_eoi(struct kvm_vcpu *vcpu, int vector, int trigger_mode)
{
 struct kvm_ioapic *ioapic = vcpu->kvm->arch.vioapic;

 spin_lock(&ioapic->lock);
 __kvm_ioapic_update_eoi(vcpu, ioapic, vector, trigger_mode);
 spin_unlock(&ioapic->lock);
}
