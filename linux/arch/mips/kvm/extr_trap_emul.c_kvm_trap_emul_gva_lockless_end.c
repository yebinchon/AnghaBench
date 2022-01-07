
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int mode; } ;


 int OUTSIDE_GUEST_MODE ;
 int local_irq_enable () ;
 int smp_store_release (int *,int ) ;

void kvm_trap_emul_gva_lockless_end(struct kvm_vcpu *vcpu)
{





 smp_store_release(&vcpu->mode, OUTSIDE_GUEST_MODE);





 local_irq_enable();
}
