
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic_state {int irr; } ;
struct kvm_ioapic {int lock; int irr_delivered; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; } ;


 int memcpy (struct kvm_ioapic_state*,struct kvm_ioapic*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_get_ioapic(struct kvm *kvm, struct kvm_ioapic_state *state)
{
 struct kvm_ioapic *ioapic = kvm->arch.vioapic;

 spin_lock(&ioapic->lock);
 memcpy(state, ioapic, sizeof(struct kvm_ioapic_state));
 state->irr &= ~ioapic->irr_delivered;
 spin_unlock(&ioapic->lock);
}
