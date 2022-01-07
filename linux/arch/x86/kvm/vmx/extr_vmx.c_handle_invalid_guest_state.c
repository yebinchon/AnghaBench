
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int vm86_active; } ;
struct TYPE_7__ {scalar_t__ nested_run_pending; } ;
struct vcpu_vmx {TYPE_2__ rmode; scalar_t__ emulation_required; int vcpu; TYPE_1__ nested; } ;
struct TYPE_9__ {scalar_t__ pending; } ;
struct TYPE_12__ {scalar_t__ halt_request; TYPE_3__ exception; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_5__* run; } ;
struct TYPE_10__ {scalar_t__ ndata; int suberror; } ;
struct TYPE_11__ {TYPE_4__ internal; int exit_reason; } ;


 int CPU_BASED_VIRTUAL_INTR_PENDING ;
 int KVM_EXIT_INTERNAL_ERROR ;
 int KVM_INTERNAL_ERROR_EMULATION ;
 int KVM_REQ_EVENT ;
 int WARN_ON_ONCE (int) ;
 int current ;
 int exec_controls_get (struct vcpu_vmx*) ;
 int handle_interrupt_window (int *) ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_test_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_halt (struct kvm_vcpu*) ;
 scalar_t__ need_resched () ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ vmx_interrupt_allowed (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_invalid_guest_state(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 bool intr_window_requested;
 unsigned count = 130;






 WARN_ON_ONCE(vmx->emulation_required && vmx->nested.nested_run_pending);

 intr_window_requested = exec_controls_get(vmx) &
    CPU_BASED_VIRTUAL_INTR_PENDING;

 while (vmx->emulation_required && count-- != 0) {
  if (intr_window_requested && vmx_interrupt_allowed(vcpu))
   return handle_interrupt_window(&vmx->vcpu);

  if (kvm_test_request(KVM_REQ_EVENT, vcpu))
   return 1;

  if (!kvm_emulate_instruction(vcpu, 0))
   return 0;

  if (vmx->emulation_required && !vmx->rmode.vm86_active &&
      vcpu->arch.exception.pending) {
   vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
   vcpu->run->internal.suberror =
      KVM_INTERNAL_ERROR_EMULATION;
   vcpu->run->internal.ndata = 0;
   return 0;
  }

  if (vcpu->arch.halt_request) {
   vcpu->arch.halt_request = 0;
   return kvm_vcpu_halt(vcpu);
  }





  if (signal_pending(current))
   return 1;

  if (need_resched())
   schedule();
 }

 return 1;
}
