
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


struct TYPE_15__ {TYPE_6__* sie_block; } ;
struct kvm_vcpu {TYPE_7__ arch; TYPE_8__* kvm; int vcpu_id; TYPE_3__* run; } ;
struct TYPE_12__ {int kicked_mask; } ;
struct TYPE_13__ {TYPE_4__ gisa_int; } ;
struct TYPE_16__ {TYPE_5__ arch; } ;
struct TYPE_14__ {int cpuflags; scalar_t__ icptcode; int gg15; int gg14; } ;
struct TYPE_9__ {int * gprs; } ;
struct TYPE_10__ {TYPE_1__ regs; } ;
struct TYPE_11__ {TYPE_2__ s; } ;


 int CIF_MCCK_PENDING ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int ) ;
 scalar_t__ guestdbg_enabled (struct kvm_vcpu*) ;
 int kvm_check_async_pf_completion (struct kvm_vcpu*) ;
 int kvm_is_ucontrol (TYPE_8__*) ;
 int kvm_s390_backup_guest_per_regs (struct kvm_vcpu*) ;
 int kvm_s390_deliver_pending_interrupts (struct kvm_vcpu*) ;
 int kvm_s390_handle_requests (struct kvm_vcpu*) ;
 int kvm_s390_patch_guest_per_regs (struct kvm_vcpu*) ;
 scalar_t__ need_resched () ;
 int s390_handle_mcck () ;
 int schedule () ;
 scalar_t__ test_cpu_flag (int ) ;
 int trace_kvm_s390_sie_enter (struct kvm_vcpu*,int) ;

__attribute__((used)) static int vcpu_pre_run(struct kvm_vcpu *vcpu)
{
 int rc, cpuflags;






 kvm_check_async_pf_completion(vcpu);

 vcpu->arch.sie_block->gg14 = vcpu->run->s.regs.gprs[14];
 vcpu->arch.sie_block->gg15 = vcpu->run->s.regs.gprs[15];

 if (need_resched())
  schedule();

 if (test_cpu_flag(CIF_MCCK_PENDING))
  s390_handle_mcck();

 if (!kvm_is_ucontrol(vcpu->kvm)) {
  rc = kvm_s390_deliver_pending_interrupts(vcpu);
  if (rc)
   return rc;
 }

 rc = kvm_s390_handle_requests(vcpu);
 if (rc)
  return rc;

 if (guestdbg_enabled(vcpu)) {
  kvm_s390_backup_guest_per_regs(vcpu);
  kvm_s390_patch_guest_per_regs(vcpu);
 }

 clear_bit(vcpu->vcpu_id, vcpu->kvm->arch.gisa_int.kicked_mask);

 vcpu->arch.sie_block->icptcode = 0;
 cpuflags = atomic_read(&vcpu->arch.sie_block->cpuflags);
 VCPU_EVENT(vcpu, 6, "entering sie flags %x", cpuflags);
 trace_kvm_s390_sie_enter(vcpu, cpuflags);

 return 0;
}
