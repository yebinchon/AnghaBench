
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int gs_enabled; TYPE_5__* sie_block; } ;
struct TYPE_15__ {int instruction_gs; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_3__* run; int kvm; TYPE_7__ stat; } ;
struct gs_cb {int dummy; } ;
struct TYPE_12__ {struct gs_cb* gs_cb; } ;
struct TYPE_16__ {TYPE_4__ thread; } ;
struct TYPE_13__ {int ecd; int ecb; } ;
struct TYPE_9__ {int gscb; } ;
struct TYPE_10__ {TYPE_1__ regs; } ;
struct TYPE_11__ {TYPE_2__ s; } ;


 int ECB_GS ;
 int ECD_HOSTREGMGMT ;
 int PGM_OPERATION ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int __ctl_set_bit (int,int) ;
 TYPE_8__* current ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int kvm_s390_retry_instr (struct kvm_vcpu*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int restore_gs_cb (struct gs_cb*) ;
 scalar_t__ test_kvm_facility (int ,int) ;

__attribute__((used)) static int handle_gs(struct kvm_vcpu *vcpu)
{
 vcpu->stat.instruction_gs++;

 if (test_kvm_facility(vcpu->kvm, 133)) {
  VCPU_EVENT(vcpu, 3, "%s", "ENABLE: GS (lazy)");
  preempt_disable();
  __ctl_set_bit(2, 4);
  current->thread.gs_cb = (struct gs_cb *)&vcpu->run->s.regs.gscb;
  restore_gs_cb(current->thread.gs_cb);
  preempt_enable();
  vcpu->arch.sie_block->ecb |= ECB_GS;
  vcpu->arch.sie_block->ecd |= ECD_HOSTREGMGMT;
  vcpu->arch.gs_enabled = 1;
  kvm_s390_retry_instr(vcpu);
  return 0;
 } else
  return kvm_s390_inject_program_int(vcpu, PGM_OPERATION);
}
