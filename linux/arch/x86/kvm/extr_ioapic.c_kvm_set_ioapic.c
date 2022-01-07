
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic_state {int irr; } ;
struct kvm_ioapic {int lock; scalar_t__ irr_delivered; scalar_t__ irr; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; } ;


 int kvm_ioapic_inject_all (struct kvm_ioapic*,int ) ;
 int kvm_make_scan_ioapic_request (struct kvm*) ;
 int memcpy (struct kvm_ioapic*,struct kvm_ioapic_state*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_set_ioapic(struct kvm *kvm, struct kvm_ioapic_state *state)
{
 struct kvm_ioapic *ioapic = kvm->arch.vioapic;

 spin_lock(&ioapic->lock);
 memcpy(ioapic, state, sizeof(struct kvm_ioapic_state));
 ioapic->irr = 0;
 ioapic->irr_delivered = 0;
 kvm_make_scan_ioapic_request(kvm);
 kvm_ioapic_inject_all(ioapic, state->irr);
 spin_unlock(&ioapic->lock);
}
