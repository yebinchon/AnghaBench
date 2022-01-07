
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u64 ;
struct TYPE_12__ {int complete_userspace_io; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_4__* run; } ;
struct TYPE_14__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;
struct TYPE_13__ {int active; } ;
struct TYPE_8__ {int input; int* params; } ;
struct TYPE_9__ {TYPE_1__ hcall; } ;
struct TYPE_10__ {TYPE_2__ u; int type; } ;
struct TYPE_11__ {TYPE_3__ hyperv; int exit_reason; } ;
 int HV_HYPERCALL_FAST_BIT ;
 int HV_HYPERCALL_REP_COMP_OFFSET ;
 int HV_HYPERCALL_REP_START_OFFSET ;
 int HV_STATUS_INVALID_HYPERCALL_CODE ;
 int HV_STATUS_INVALID_HYPERCALL_INPUT ;
 int HV_STATUS_INVALID_PORT_ID ;
 int HV_STATUS_SUCCESS ;
 int KVM_EXIT_HYPERV ;
 int KVM_EXIT_HYPERV_HCALL ;
 int UD_VECTOR ;
 scalar_t__ is_64_bit_mode (struct kvm_vcpu*) ;
 int is_protmode (struct kvm_vcpu*) ;
 int kvm_hv_flush_tlb (struct kvm_vcpu*,int,int,int) ;
 int kvm_hv_hypercall_complete (struct kvm_vcpu*,int) ;
 int kvm_hv_hypercall_complete_userspace ;
 int kvm_hv_send_ipi (struct kvm_vcpu*,int,int,int,int) ;
 int kvm_hvcall_signal_event (struct kvm_vcpu*,int,int) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_r8_read (struct kvm_vcpu*) ;
 int kvm_rax_read (struct kvm_vcpu*) ;
 scalar_t__ kvm_rbx_read (struct kvm_vcpu*) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 scalar_t__ kvm_rdi_read (struct kvm_vcpu*) ;
 int kvm_rdx_read (struct kvm_vcpu*) ;
 int kvm_rsi_read (struct kvm_vcpu*) ;
 int kvm_vcpu_on_spin (struct kvm_vcpu*,int) ;
 TYPE_7__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 int trace_kvm_hv_hypercall (int,int,int,int,int,int) ;
 int unlikely (int) ;
 TYPE_6__* vcpu_to_synic (struct kvm_vcpu*) ;

int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
{
 u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
 uint16_t code, rep_idx, rep_cnt;
 bool fast, rep;





 if (kvm_x86_ops->get_cpl(vcpu) != 0 || !is_protmode(vcpu)) {
  kvm_queue_exception(vcpu, UD_VECTOR);
  return 1;
 }
 {
  param = ((u64)kvm_rdx_read(vcpu) << 32) |
   (kvm_rax_read(vcpu) & 0xffffffff);
  ingpa = ((u64)kvm_rbx_read(vcpu) << 32) |
   (kvm_rcx_read(vcpu) & 0xffffffff);
  outgpa = ((u64)kvm_rdi_read(vcpu) << 32) |
   (kvm_rsi_read(vcpu) & 0xffffffff);
 }

 code = param & 0xffff;
 fast = !!(param & HV_HYPERCALL_FAST_BIT);
 rep_cnt = (param >> HV_HYPERCALL_REP_COMP_OFFSET) & 0xfff;
 rep_idx = (param >> HV_HYPERCALL_REP_START_OFFSET) & 0xfff;
 rep = !!(rep_cnt || rep_idx);

 trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);

 switch (code) {
 case 132:
  if (unlikely(rep)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  kvm_vcpu_on_spin(vcpu, 1);
  break;
 case 128:
  if (unlikely(rep)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hvcall_signal_event(vcpu, fast, ingpa);
  if (ret != HV_STATUS_INVALID_PORT_ID)
   break;

 case 131:

  if (unlikely(rep || !vcpu_to_synic(vcpu)->active)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  vcpu->run->exit_reason = KVM_EXIT_HYPERV;
  vcpu->run->hyperv.type = KVM_EXIT_HYPERV_HCALL;
  vcpu->run->hyperv.u.hcall.input = param;
  vcpu->run->hyperv.u.hcall.params[0] = ingpa;
  vcpu->run->hyperv.u.hcall.params[1] = outgpa;
  vcpu->arch.complete_userspace_io =
    kvm_hv_hypercall_complete_userspace;
  return 0;
 case 136:
  if (unlikely(fast || !rep_cnt || rep_idx)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hv_flush_tlb(vcpu, ingpa, rep_cnt, 0);
  break;
 case 134:
  if (unlikely(fast || rep)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hv_flush_tlb(vcpu, ingpa, rep_cnt, 0);
  break;
 case 135:
  if (unlikely(fast || !rep_cnt || rep_idx)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hv_flush_tlb(vcpu, ingpa, rep_cnt, 1);
  break;
 case 133:
  if (unlikely(fast || rep)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hv_flush_tlb(vcpu, ingpa, rep_cnt, 1);
  break;
 case 130:
  if (unlikely(rep)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hv_send_ipi(vcpu, ingpa, outgpa, 0, fast);
  break;
 case 129:
  if (unlikely(fast || rep)) {
   ret = HV_STATUS_INVALID_HYPERCALL_INPUT;
   break;
  }
  ret = kvm_hv_send_ipi(vcpu, ingpa, outgpa, 1, 0);
  break;
 default:
  ret = HV_STATUS_INVALID_HYPERCALL_CODE;
  break;
 }

 return kvm_hv_hypercall_complete(vcpu, ret);
}
