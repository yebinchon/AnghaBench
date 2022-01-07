
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_3__ {int hypercalls; } ;
struct kvm_vcpu {TYPE_1__ stat; int kvm; } ;
struct TYPE_4__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;


 unsigned long KVM_ENOSYS ;
 unsigned long KVM_EPERM ;





 int is_64_bit_mode (struct kvm_vcpu*) ;
 int kvm_hv_hypercall (struct kvm_vcpu*) ;
 scalar_t__ kvm_hv_hypercall_enabled (int ) ;
 unsigned long kvm_pv_clock_pairing (struct kvm_vcpu*,unsigned long,unsigned long) ;
 int kvm_pv_kick_cpu_op (int ,unsigned long,unsigned long) ;
 unsigned long kvm_pv_send_ipi (int ,unsigned long,unsigned long,unsigned long,unsigned long,int) ;
 unsigned long kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_rax_write (struct kvm_vcpu*,unsigned long) ;
 unsigned long kvm_rbx_read (struct kvm_vcpu*) ;
 unsigned long kvm_rcx_read (struct kvm_vcpu*) ;
 unsigned long kvm_rdx_read (struct kvm_vcpu*) ;
 unsigned long kvm_rsi_read (struct kvm_vcpu*) ;
 int kvm_sched_yield (int ,unsigned long) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 int trace_kvm_hypercall (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

int kvm_emulate_hypercall(struct kvm_vcpu *vcpu)
{
 unsigned long nr, a0, a1, a2, a3, ret;
 int op_64_bit;

 if (kvm_hv_hypercall_enabled(vcpu->kvm))
  return kvm_hv_hypercall(vcpu);

 nr = kvm_rax_read(vcpu);
 a0 = kvm_rbx_read(vcpu);
 a1 = kvm_rcx_read(vcpu);
 a2 = kvm_rdx_read(vcpu);
 a3 = kvm_rsi_read(vcpu);

 trace_kvm_hypercall(nr, a0, a1, a2, a3);

 op_64_bit = is_64_bit_mode(vcpu);
 if (!op_64_bit) {
  nr &= 0xFFFFFFFF;
  a0 &= 0xFFFFFFFF;
  a1 &= 0xFFFFFFFF;
  a2 &= 0xFFFFFFFF;
  a3 &= 0xFFFFFFFF;
 }

 if (kvm_x86_ops->get_cpl(vcpu) != 0) {
  ret = -KVM_EPERM;
  goto out;
 }

 switch (nr) {
 case 128:
  ret = 0;
  break;
 case 131:
  kvm_pv_kick_cpu_op(vcpu->kvm, a0, a1);
  kvm_sched_yield(vcpu->kvm, a1);
  ret = 0;
  break;





 case 129:
  ret = kvm_pv_send_ipi(vcpu->kvm, a0, a1, a2, a3, op_64_bit);
  break;
 case 130:
  kvm_sched_yield(vcpu->kvm, a0);
  ret = 0;
  break;
 default:
  ret = -KVM_ENOSYS;
  break;
 }
out:
 if (!op_64_bit)
  ret = (u32)ret;
 kvm_rax_write(vcpu, ret);

 ++vcpu->stat.hypercalls;
 return kvm_skip_emulated_instruction(vcpu);
}
