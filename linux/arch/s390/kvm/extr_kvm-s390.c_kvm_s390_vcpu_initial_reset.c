
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


struct TYPE_11__ {int pfault_token; TYPE_4__* sie_block; } ;
struct kvm_vcpu {int kvm; TYPE_5__ arch; } ;
typedef int __u64 ;
struct TYPE_8__ {scalar_t__ fpc; } ;
struct TYPE_9__ {TYPE_2__ fpu; } ;
struct TYPE_12__ {TYPE_3__ thread; } ;
struct TYPE_7__ {unsigned long mask; unsigned long addr; } ;
struct TYPE_10__ {unsigned long ckc; int* gcr; int gbea; int fpf; scalar_t__ pp; scalar_t__ todpr; TYPE_1__ gpsw; } ;


 int CR0_INTERRUPT_KEY_SUBMASK ;
 int CR0_MEASUREMENT_ALERT_SUBMASK ;
 int CR0_UNUSED_56 ;
 int CR14_EXTERNAL_DAMAGE_SUBMASK ;
 int CR14_UNUSED_32 ;
 int CR14_UNUSED_33 ;
 int FPF_BPBC ;
 int KVM_S390_PFAULT_TOKEN_INVALID ;
 TYPE_6__* current ;
 int kvm_clear_async_pf_completion_queue (struct kvm_vcpu*) ;
 int kvm_s390_clear_local_irqs (struct kvm_vcpu*) ;
 int kvm_s390_set_cpu_timer (struct kvm_vcpu*,int ) ;
 int kvm_s390_set_prefix (struct kvm_vcpu*,int ) ;
 int kvm_s390_user_cpu_state_ctrl (int ) ;
 int kvm_s390_vcpu_stop (struct kvm_vcpu*) ;
 int memset (int*,int ,int) ;
 int save_fpu_regs () ;

__attribute__((used)) static void kvm_s390_vcpu_initial_reset(struct kvm_vcpu *vcpu)
{

 vcpu->arch.sie_block->gpsw.mask = 0UL;
 vcpu->arch.sie_block->gpsw.addr = 0UL;
 kvm_s390_set_prefix(vcpu, 0);
 kvm_s390_set_cpu_timer(vcpu, 0);
 vcpu->arch.sie_block->ckc = 0UL;
 vcpu->arch.sie_block->todpr = 0;
 memset(vcpu->arch.sie_block->gcr, 0, 16 * sizeof(__u64));
 vcpu->arch.sie_block->gcr[0] = CR0_UNUSED_56 |
     CR0_INTERRUPT_KEY_SUBMASK |
     CR0_MEASUREMENT_ALERT_SUBMASK;
 vcpu->arch.sie_block->gcr[14] = CR14_UNUSED_32 |
     CR14_UNUSED_33 |
     CR14_EXTERNAL_DAMAGE_SUBMASK;

 save_fpu_regs();
 current->thread.fpu.fpc = 0;
 vcpu->arch.sie_block->gbea = 1;
 vcpu->arch.sie_block->pp = 0;
 vcpu->arch.sie_block->fpf &= ~FPF_BPBC;
 vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
 kvm_clear_async_pf_completion_queue(vcpu);
 if (!kvm_s390_user_cpu_state_ctrl(vcpu->kvm))
  kvm_s390_vcpu_stop(vcpu);
 kvm_s390_clear_local_irqs(vcpu);
}
