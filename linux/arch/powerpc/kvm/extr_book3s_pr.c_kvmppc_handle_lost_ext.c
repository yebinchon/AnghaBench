
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long guest_owned_ext; int vr; int fp; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_6__ {TYPE_1__* regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_5__ {unsigned long msr; } ;


 unsigned long MSR_FP ;
 unsigned long MSR_VEC ;
 TYPE_4__* current ;
 int disable_kernel_altivec () ;
 int disable_kernel_fp () ;
 int enable_kernel_altivec () ;
 int enable_kernel_fp () ;
 int load_fp_state (int *) ;
 int load_vr_state (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void kvmppc_handle_lost_ext(struct kvm_vcpu *vcpu)
{
 unsigned long lost_ext;

 lost_ext = vcpu->arch.guest_owned_ext & ~current->thread.regs->msr;
 if (!lost_ext)
  return;

 if (lost_ext & MSR_FP) {
  preempt_disable();
  enable_kernel_fp();
  load_fp_state(&vcpu->arch.fp);
  disable_kernel_fp();
  preempt_enable();
 }
 current->thread.regs->msr |= lost_ext;
}
