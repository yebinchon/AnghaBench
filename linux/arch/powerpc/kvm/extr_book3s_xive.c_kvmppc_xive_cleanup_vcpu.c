
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xive_q {int * qpage; } ;
struct kvmppc_xive_vcpu {int valid; scalar_t__ vp_ipi; int vp_ipi_data; int vp_id; struct xive_q* queues; struct kvmppc_xive_vcpu** esc_virq_names; scalar_t__* esc_virq; TYPE_3__* xive; int server_num; } ;
struct kvmppc_xive {int q_page_order; } ;
struct TYPE_8__ {struct kvmppc_xive_vcpu* xive_vcpu; int irq_type; scalar_t__ xive_cam_word; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_2__* kvm; } ;
struct TYPE_7__ {scalar_t__ single_escalation; } ;
struct TYPE_5__ {struct kvmppc_xive* xive; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 int KVMPPC_IRQ_DEFAULT ;
 int KVMPPC_XIVE_Q_COUNT ;
 int XIVE_ESB_SET_PQ_01 ;
 int free_irq (scalar_t__,struct kvm_vcpu*) ;
 int free_pages (unsigned long,int ) ;
 int irq_dispose_mapping (scalar_t__) ;
 int kfree (struct kvmppc_xive_vcpu*) ;
 int kvmppc_xics_enabled (struct kvm_vcpu*) ;
 int kvmppc_xive_disable_vcpu_interrupts (struct kvm_vcpu*) ;
 int pr_devel (char*,int ) ;
 int xive_cleanup_irq_data (int *) ;
 int xive_cleanup_single_escalation (struct kvm_vcpu*,struct kvmppc_xive_vcpu*,scalar_t__) ;
 int xive_native_disable_queue (int ,struct xive_q*,int) ;
 int xive_native_disable_vp (int ) ;
 int xive_native_free_irq (scalar_t__) ;
 int xive_vm_esb_load (int *,int ) ;

void kvmppc_xive_cleanup_vcpu(struct kvm_vcpu *vcpu)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
 struct kvmppc_xive *xive = vcpu->kvm->arch.xive;
 int i;

 if (!kvmppc_xics_enabled(vcpu))
  return;

 if (!xc)
  return;

 pr_devel("cleanup_vcpu(cpu=%d)\n", xc->server_num);


 xc->valid = 0;
 kvmppc_xive_disable_vcpu_interrupts(vcpu);


 xive_vm_esb_load(&xc->vp_ipi_data, XIVE_ESB_SET_PQ_01);


 for (i = 0; i < KVMPPC_XIVE_Q_COUNT; i++) {
  if (xc->esc_virq[i]) {
   if (xc->xive->single_escalation)
    xive_cleanup_single_escalation(vcpu, xc,
       xc->esc_virq[i]);
   free_irq(xc->esc_virq[i], vcpu);
   irq_dispose_mapping(xc->esc_virq[i]);
   kfree(xc->esc_virq_names[i]);
  }
 }


 xive_native_disable_vp(xc->vp_id);


 vcpu->arch.xive_cam_word = 0;


 for (i = 0; i < KVMPPC_XIVE_Q_COUNT; i++) {
  struct xive_q *q = &xc->queues[i];

  xive_native_disable_queue(xc->vp_id, q, i);
  if (q->qpage) {
   free_pages((unsigned long)q->qpage,
       xive->q_page_order);
   q->qpage = ((void*)0);
  }
 }


 if (xc->vp_ipi) {
  xive_cleanup_irq_data(&xc->vp_ipi_data);
  xive_native_free_irq(xc->vp_ipi);
 }

 kfree(xc);


 vcpu->arch.irq_type = KVMPPC_IRQ_DEFAULT;
 vcpu->arch.xive_vcpu = ((void*)0);
}
