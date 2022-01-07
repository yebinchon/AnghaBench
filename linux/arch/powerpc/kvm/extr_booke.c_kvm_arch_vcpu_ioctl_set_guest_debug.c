
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct debug_reg {int dbcr0; int dbcr1; int dbcr2; } ;
struct TYPE_4__ {struct debug_reg dbg_reg; } ;
struct kvm_vcpu {int guest_debug; TYPE_1__ arch; } ;
struct TYPE_6__ {TYPE_2__* bp; } ;
struct kvm_guest_debug {int control; TYPE_3__ arch; } ;
struct TYPE_5__ {int type; int addr; } ;


 int DBCR0_IC ;
 int DBCR0_IDM ;
 int DBCR1_IAC1US ;
 int DBCR1_IAC2US ;
 int DBCR1_IAC3US ;
 int DBCR1_IAC4US ;
 int DBCR2_DAC1US ;
 int DBCR2_DAC2US ;
 int EINVAL ;
 int KVMPPC_BOOKE_DAC_NUM ;
 int KVMPPC_BOOKE_IAC_NUM ;
 int KVMPPC_DEBUG_BREAKPOINT ;
 int KVMPPC_DEBUG_NONE ;
 int KVMPPC_DEBUG_WATCH_READ ;
 int KVMPPC_DEBUG_WATCH_WRITE ;
 int KVM_GUESTDBG_ENABLE ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int MSR_DE ;
 int kvm_guest_protect_msr (struct kvm_vcpu*,int ,int) ;
 scalar_t__ kvmppc_booke_add_breakpoint (struct debug_reg*,int ,int ) ;
 scalar_t__ kvmppc_booke_add_watchpoint (struct debug_reg*,int ,int,int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
      struct kvm_guest_debug *dbg)
{
 struct debug_reg *dbg_reg;
 int n, b = 0, w = 0;
 int ret = 0;

 vcpu_load(vcpu);

 if (!(dbg->control & KVM_GUESTDBG_ENABLE)) {
  vcpu->arch.dbg_reg.dbcr0 = 0;
  vcpu->guest_debug = 0;
  kvm_guest_protect_msr(vcpu, MSR_DE, 0);
  goto out;
 }

 kvm_guest_protect_msr(vcpu, MSR_DE, 1);
 vcpu->guest_debug = dbg->control;
 vcpu->arch.dbg_reg.dbcr0 = 0;

 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
  vcpu->arch.dbg_reg.dbcr0 |= DBCR0_IDM | DBCR0_IC;


 dbg_reg = &(vcpu->arch.dbg_reg);
 dbg_reg->dbcr1 = DBCR1_IAC1US | DBCR1_IAC2US | DBCR1_IAC3US |
     DBCR1_IAC4US;
 dbg_reg->dbcr2 = DBCR2_DAC1US | DBCR2_DAC2US;


 if (!(vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP))
  goto out;

 ret = -EINVAL;
 for (n = 0; n < (KVMPPC_BOOKE_IAC_NUM + KVMPPC_BOOKE_DAC_NUM); n++) {
  uint64_t addr = dbg->arch.bp[n].addr;
  uint32_t type = dbg->arch.bp[n].type;

  if (type == KVMPPC_DEBUG_NONE)
   continue;

  if (type & ~(KVMPPC_DEBUG_WATCH_READ |
        KVMPPC_DEBUG_WATCH_WRITE |
        KVMPPC_DEBUG_BREAKPOINT))
   goto out;

  if (type & KVMPPC_DEBUG_BREAKPOINT) {

   if (kvmppc_booke_add_breakpoint(dbg_reg, addr, b++))
    goto out;
  } else {

   if (kvmppc_booke_add_watchpoint(dbg_reg, addr,
       type, w++))
    goto out;
  }
 }

 ret = 0;
out:
 vcpu_put(vcpu);
 return ret;
}
