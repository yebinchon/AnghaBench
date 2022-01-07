
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int mode; } ;


 int READING_SHADOW_PAGE_TABLES ;
 int local_irq_disable () ;
 int smp_store_mb (int ,int ) ;

__attribute__((used)) static void walk_shadow_page_lockless_begin(struct kvm_vcpu *vcpu)
{




 local_irq_disable();





 smp_store_mb(vcpu->mode, READING_SHADOW_PAGE_TABLES);
}
