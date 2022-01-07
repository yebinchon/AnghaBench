
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int mode; } ;


 int READING_SHADOW_PAGE_TABLES ;
 int WARN_ON_ONCE (int ) ;
 int irqs_disabled () ;
 int kvm_trap_emul_check_requests (struct kvm_vcpu*,int ,int) ;
 int local_irq_disable () ;
 int smp_processor_id () ;
 int smp_store_mb (int ,int ) ;

void kvm_trap_emul_gva_lockless_begin(struct kvm_vcpu *vcpu)
{

 WARN_ON_ONCE(irqs_disabled());






 local_irq_disable();







 smp_store_mb(vcpu->mode, READING_SHADOW_PAGE_TABLES);
 kvm_trap_emul_check_requests(vcpu, smp_processor_id(), 1);
}
