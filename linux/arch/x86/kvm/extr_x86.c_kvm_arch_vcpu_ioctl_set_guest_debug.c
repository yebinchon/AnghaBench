
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pending; } ;
struct TYPE_7__ {scalar_t__ singlestep_rip; int * db; int * eff_db; int guest_debug_dr7; TYPE_1__ exception; } ;
struct kvm_vcpu {int guest_debug; TYPE_3__ arch; } ;
struct TYPE_6__ {int * debugreg; } ;
struct kvm_guest_debug {int control; TYPE_2__ arch; } ;
struct TYPE_8__ {int (* update_bp_intercept ) (struct kvm_vcpu*) ;} ;


 int BP_VECTOR ;
 int DB_VECTOR ;
 int EBUSY ;
 int KVM_GUESTDBG_ENABLE ;
 int KVM_GUESTDBG_INJECT_BP ;
 int KVM_GUESTDBG_INJECT_DB ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_NR_DB_REGS ;
 int VCPU_SREG_CS ;
 scalar_t__ get_segment_base (struct kvm_vcpu*,int ) ;
 unsigned long kvm_get_rflags (struct kvm_vcpu*) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_rip_read (struct kvm_vcpu*) ;
 int kvm_set_rflags (struct kvm_vcpu*,unsigned long) ;
 int kvm_update_dr7 (struct kvm_vcpu*) ;
 TYPE_4__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
     struct kvm_guest_debug *dbg)
{
 unsigned long rflags;
 int i, r;

 vcpu_load(vcpu);

 if (dbg->control & (KVM_GUESTDBG_INJECT_DB | KVM_GUESTDBG_INJECT_BP)) {
  r = -EBUSY;
  if (vcpu->arch.exception.pending)
   goto out;
  if (dbg->control & KVM_GUESTDBG_INJECT_DB)
   kvm_queue_exception(vcpu, DB_VECTOR);
  else
   kvm_queue_exception(vcpu, BP_VECTOR);
 }





 rflags = kvm_get_rflags(vcpu);

 vcpu->guest_debug = dbg->control;
 if (!(vcpu->guest_debug & KVM_GUESTDBG_ENABLE))
  vcpu->guest_debug = 0;

 if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP) {
  for (i = 0; i < KVM_NR_DB_REGS; ++i)
   vcpu->arch.eff_db[i] = dbg->arch.debugreg[i];
  vcpu->arch.guest_debug_dr7 = dbg->arch.debugreg[7];
 } else {
  for (i = 0; i < KVM_NR_DB_REGS; i++)
   vcpu->arch.eff_db[i] = vcpu->arch.db[i];
 }
 kvm_update_dr7(vcpu);

 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
  vcpu->arch.singlestep_rip = kvm_rip_read(vcpu) +
   get_segment_base(vcpu, VCPU_SREG_CS);





 kvm_set_rflags(vcpu, rflags);

 kvm_x86_ops->update_bp_intercept(vcpu);

 r = 0;

out:
 vcpu_put(vcpu);
 return r;
}
