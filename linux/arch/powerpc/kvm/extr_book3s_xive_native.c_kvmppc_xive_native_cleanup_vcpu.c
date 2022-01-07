
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_xive_vcpu {int valid; int vp_id; scalar_t__* esc_virq; struct kvmppc_xive_vcpu** esc_virq_names; TYPE_1__* xive; int server_num; } ;
struct TYPE_4__ {struct kvmppc_xive_vcpu* xive_vcpu; int irq_type; scalar_t__ xive_cam_word; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {scalar_t__ single_escalation; } ;


 int KVMPPC_IRQ_DEFAULT ;
 int KVMPPC_XIVE_Q_COUNT ;
 int free_irq (scalar_t__,struct kvm_vcpu*) ;
 int irq_dispose_mapping (scalar_t__) ;
 int kfree (struct kvmppc_xive_vcpu*) ;
 int kvmppc_xive_disable_vcpu_interrupts (struct kvm_vcpu*) ;
 int kvmppc_xive_enabled (struct kvm_vcpu*) ;
 int kvmppc_xive_native_cleanup_queue (struct kvm_vcpu*,int) ;
 int pr_devel (char*,int ) ;
 int xive_cleanup_single_escalation (struct kvm_vcpu*,struct kvmppc_xive_vcpu*,scalar_t__) ;
 int xive_native_disable_vp (int ) ;

void kvmppc_xive_native_cleanup_vcpu(struct kvm_vcpu *vcpu)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
 int i;

 if (!kvmppc_xive_enabled(vcpu))
  return;

 if (!xc)
  return;

 pr_devel("native_cleanup_vcpu(cpu=%d)\n", xc->server_num);


 xc->valid = 0;
 kvmppc_xive_disable_vcpu_interrupts(vcpu);


 for (i = 0; i < KVMPPC_XIVE_Q_COUNT; i++) {

  if (xc->esc_virq[i]) {
   if (xc->xive->single_escalation)
    xive_cleanup_single_escalation(vcpu, xc,
       xc->esc_virq[i]);
   free_irq(xc->esc_virq[i], vcpu);
   irq_dispose_mapping(xc->esc_virq[i]);
   kfree(xc->esc_virq_names[i]);
   xc->esc_virq[i] = 0;
  }
 }


 xive_native_disable_vp(xc->vp_id);


 vcpu->arch.xive_cam_word = 0;


 for (i = 0; i < KVMPPC_XIVE_Q_COUNT; i++) {
  kvmppc_xive_native_cleanup_queue(vcpu, i);
 }


 kfree(xc);


 vcpu->arch.irq_type = KVMPPC_IRQ_DEFAULT;
 vcpu->arch.xive_vcpu = ((void*)0);
}
