
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xive_irq_data {int stale_p; } ;
struct kvmppc_xive_vcpu {int dummy; } ;
struct TYPE_2__ {int xive_esc_on; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct irq_data {int dummy; } ;


 struct xive_irq_data* irq_data_get_irq_handler_data (struct irq_data*) ;
 struct irq_data* irq_get_irq_data (int) ;
 int smp_mb () ;

void xive_cleanup_single_escalation(struct kvm_vcpu *vcpu,
        struct kvmppc_xive_vcpu *xc, int irq)
{
 struct irq_data *d = irq_get_irq_data(irq);
 struct xive_irq_data *xd = irq_data_get_irq_handler_data(d);






 xd->stale_p = 0;
 smp_mb();
 if (!vcpu->arch.xive_esc_on)
  xd->stale_p = 1;
}
