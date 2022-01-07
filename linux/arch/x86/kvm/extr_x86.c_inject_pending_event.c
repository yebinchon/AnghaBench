
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int injected; int pending; scalar_t__ nr; int error_code; int has_error_code; } ;
struct TYPE_5__ {scalar_t__ injected; } ;
struct TYPE_7__ {int nmi_injected; int dr7; int smi_pending; scalar_t__ nmi_pending; int smi_count; TYPE_2__ exception; TYPE_1__ interrupt; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_8__ {int (* check_nested_events ) (struct kvm_vcpu*,int) ;int (* set_irq ) (struct kvm_vcpu*) ;scalar_t__ (* interrupt_allowed ) (struct kvm_vcpu*) ;int (* set_nmi ) (struct kvm_vcpu*) ;scalar_t__ (* nmi_allowed ) (struct kvm_vcpu*) ;scalar_t__ (* smi_allowed ) (struct kvm_vcpu*) ;int (* queue_exception ) (struct kvm_vcpu*) ;} ;


 scalar_t__ DB_VECTOR ;
 int DR7_GD ;
 scalar_t__ EXCPT_FAULT ;
 int WARN_ON_ONCE (int) ;
 int X86_EFLAGS_RF ;
 int __kvm_set_rflags (struct kvm_vcpu*,int) ;
 int enter_smm (struct kvm_vcpu*) ;
 scalar_t__ exception_type (scalar_t__) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int is_smm (struct kvm_vcpu*) ;
 int kvm_cpu_get_interrupt (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_injectable_intr (struct kvm_vcpu*) ;
 int kvm_deliver_exception_payload (struct kvm_vcpu*) ;
 scalar_t__ kvm_event_needs_reinjection (struct kvm_vcpu*) ;
 int kvm_get_rflags (struct kvm_vcpu*) ;
 int kvm_queue_interrupt (struct kvm_vcpu*,int ,int) ;
 int kvm_update_dr7 (struct kvm_vcpu*) ;
 TYPE_4__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 scalar_t__ stub10 (struct kvm_vcpu*) ;
 int stub11 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;
 int stub3 (struct kvm_vcpu*) ;
 int stub4 (struct kvm_vcpu*,int) ;
 int stub5 (struct kvm_vcpu*) ;
 scalar_t__ stub6 (struct kvm_vcpu*) ;
 scalar_t__ stub7 (struct kvm_vcpu*) ;
 int stub8 (struct kvm_vcpu*) ;
 int stub9 (struct kvm_vcpu*,int) ;
 int trace_kvm_inj_exception (scalar_t__,int ,int ) ;

__attribute__((used)) static int inject_pending_event(struct kvm_vcpu *vcpu, bool req_int_win)
{
 int r;



 if (vcpu->arch.exception.injected)
  kvm_x86_ops->queue_exception(vcpu);
 else if (!vcpu->arch.exception.pending) {
  if (vcpu->arch.nmi_injected)
   kvm_x86_ops->set_nmi(vcpu);
  else if (vcpu->arch.interrupt.injected)
   kvm_x86_ops->set_irq(vcpu);
 }







 if (is_guest_mode(vcpu) && kvm_x86_ops->check_nested_events) {
  r = kvm_x86_ops->check_nested_events(vcpu, req_int_win);
  if (r != 0)
   return r;
 }


 if (vcpu->arch.exception.pending) {
  trace_kvm_inj_exception(vcpu->arch.exception.nr,
     vcpu->arch.exception.has_error_code,
     vcpu->arch.exception.error_code);

  WARN_ON_ONCE(vcpu->arch.exception.injected);
  vcpu->arch.exception.pending = 0;
  vcpu->arch.exception.injected = 1;

  if (exception_type(vcpu->arch.exception.nr) == EXCPT_FAULT)
   __kvm_set_rflags(vcpu, kvm_get_rflags(vcpu) |
          X86_EFLAGS_RF);

  if (vcpu->arch.exception.nr == DB_VECTOR) {
   kvm_deliver_exception_payload(vcpu);
   if (vcpu->arch.dr7 & DR7_GD) {
    vcpu->arch.dr7 &= ~DR7_GD;
    kvm_update_dr7(vcpu);
   }
  }

  kvm_x86_ops->queue_exception(vcpu);
 }


 if (kvm_event_needs_reinjection(vcpu))
  return 0;

 if (vcpu->arch.smi_pending && !is_smm(vcpu) &&
     kvm_x86_ops->smi_allowed(vcpu)) {
  vcpu->arch.smi_pending = 0;
  ++vcpu->arch.smi_count;
  enter_smm(vcpu);
 } else if (vcpu->arch.nmi_pending && kvm_x86_ops->nmi_allowed(vcpu)) {
  --vcpu->arch.nmi_pending;
  vcpu->arch.nmi_injected = 1;
  kvm_x86_ops->set_nmi(vcpu);
 } else if (kvm_cpu_has_injectable_intr(vcpu)) {







  if (is_guest_mode(vcpu) && kvm_x86_ops->check_nested_events) {
   r = kvm_x86_ops->check_nested_events(vcpu, req_int_win);
   if (r != 0)
    return r;
  }
  if (kvm_x86_ops->interrupt_allowed(vcpu)) {
   kvm_queue_interrupt(vcpu, kvm_cpu_get_interrupt(vcpu),
         0);
   kvm_x86_ops->set_irq(vcpu);
  }
 }

 return 0;
}
