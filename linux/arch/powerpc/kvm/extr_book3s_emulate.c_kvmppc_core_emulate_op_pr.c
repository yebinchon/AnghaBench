
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
typedef unsigned long u64 ;
typedef int u32 ;
struct TYPE_7__ {int xer; int ccr; } ;
struct TYPE_6__ {int (* mfsrin ) (struct kvm_vcpu*,int) ;int (* slbmfee ) (struct kvm_vcpu*,int) ;int (* slbmfev ) (struct kvm_vcpu*,int) ;int (* slbfee ) (struct kvm_vcpu*,int,int*) ;int (* slbia ) (struct kvm_vcpu*) ;int (* slbie ) (struct kvm_vcpu*,int) ;int (* slbmte ) (struct kvm_vcpu*,int,int) ;int (* tlbie ) (struct kvm_vcpu*,int,int) ;int (* mtsrin ) (struct kvm_vcpu*,int,int) ;} ;
struct TYPE_8__ {int hcall_needed; int fault_dar; int fault_dsisr; unsigned long texasr; int tfiar; int tfhar; TYPE_3__ regs; TYPE_2__ mmu; int papr_enabled; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_5__ {int nr; int* args; } ;
struct kvm_run {int exit_reason; TYPE_1__ papr_hcall; } ;


 int BOOK3S_INTERRUPT_DATA_STORAGE ;
 int CPU_FTR_TM ;
 int CR0_MASK ;
 int CR0_SHIFT ;
 int CR0_TBEGIN_FAILURE ;
 int DSISR_ISSTORE ;
 int DSISR_NOHPTE ;
 int DSISR_PROTFAULT ;
 int EMULATE_AGAIN ;
 int EMULATE_DONE ;
 int EMULATE_EXIT_USER ;
 int EMULATE_FAIL ;
 int ENOENT ;
 int EPERM ;
 int EV_UNIMPLEMENTED ;
 int FSCR_TM_LG ;
 int KVM_EXIT_PAPR_HCALL ;
 int MSR_EE ;
 unsigned long MSR_HV ;
 unsigned long MSR_LE ;
 int MSR_PR ;
 int MSR_RI ;
 unsigned long MSR_SF ;
 unsigned long MSR_TM ;
 int MSR_TM_ACTIVE (int) ;
 int MSR_TM_SUSPENDED (unsigned long) ;
 unsigned long MSR_TS_S ;
 int SPRN_TEXASR ;
 int SRR1_PROGPRIV ;
 int SRR1_PROGTM ;
 unsigned long TEXASR_EXACT ;
 unsigned long TEXASR_FC_LG ;
 unsigned long TEXASR_FS ;
 unsigned long TEXASR_HV ;
 unsigned long TEXASR_ROT ;
 int TM_CAUSE_EMULATE ;
 int TM_CAUSE_PERSISTENT ;
 int WARN_ON (int) ;
 int cpu_has_feature (int ) ;
 int get_op (unsigned int) ;
 int get_ra (unsigned int) ;
 int get_rb (unsigned int) ;
 int get_rs (unsigned int) ;
 int get_rt (unsigned int) ;
 int get_xop (unsigned int) ;
 int kvmppc_book3s_queue_irqprio (struct kvm_vcpu*,int ) ;
 int kvmppc_core_queue_program (struct kvm_vcpu*,int ) ;
 int kvmppc_emulate_paired_single (struct kvm_run*,struct kvm_vcpu*) ;
 int kvmppc_emulate_tabort (struct kvm_vcpu*,unsigned long) ;
 int kvmppc_emulate_trchkpt (struct kvm_vcpu*) ;
 int kvmppc_emulate_treclaim (struct kvm_vcpu*,unsigned long) ;
 int kvmppc_get_cr (struct kvm_vcpu*) ;
 int kvmppc_get_field (unsigned int,int,int) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 unsigned long kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_get_srr0 (struct kvm_vcpu*) ;
 unsigned long kvmppc_get_srr1 (struct kvm_vcpu*) ;
 int kvmppc_h_pr (struct kvm_vcpu*,int) ;
 int kvmppc_restore_tm_sprs (struct kvm_vcpu*) ;
 int kvmppc_set_cr (struct kvm_vcpu*,int) ;
 int kvmppc_set_dar (struct kvm_vcpu*,int) ;
 int kvmppc_set_dsisr (struct kvm_vcpu*,int) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int) ;
 int kvmppc_set_msr_fast (struct kvm_vcpu*,int) ;
 int kvmppc_set_pc (struct kvm_vcpu*,int ) ;
 int kvmppc_st (struct kvm_vcpu*,int*,int,int*,int) ;
 int kvmppc_trigger_fac_interrupt (struct kvm_vcpu*,int ) ;
 unsigned long mfspr (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int stub1 (struct kvm_vcpu*,int) ;
 int stub10 (struct kvm_vcpu*,int) ;
 int stub11 (struct kvm_vcpu*,int) ;
 int stub2 (struct kvm_vcpu*,int) ;
 int stub3 (struct kvm_vcpu*,unsigned int,int) ;
 int stub4 (struct kvm_vcpu*,int,int) ;
 int stub5 (struct kvm_vcpu*,int,int) ;
 int stub6 (struct kvm_vcpu*,int,int) ;
 int stub7 (struct kvm_vcpu*,int) ;
 int stub8 (struct kvm_vcpu*) ;
 int stub9 (struct kvm_vcpu*,int,int*) ;
 unsigned int swab32 (int) ;
 int tm_disable () ;
 int tm_enable () ;

int kvmppc_core_emulate_op_pr(struct kvm_run *run, struct kvm_vcpu *vcpu,
         unsigned int inst, int *advance)
{
 int emulated = EMULATE_DONE;
 int rt = get_rt(inst);
 int rs = get_rs(inst);
 int ra = get_ra(inst);
 int rb = get_rb(inst);
 u32 inst_sc = 0x44000002;

 switch (get_op(inst)) {
 case 0:
  emulated = EMULATE_FAIL;
  if ((kvmppc_get_msr(vcpu) & MSR_LE) &&
      (inst == swab32(inst_sc))) {







   kvmppc_set_gpr(vcpu, 3, EV_UNIMPLEMENTED);
   kvmppc_set_pc(vcpu, kvmppc_get_pc(vcpu) + 4);
   emulated = EMULATE_DONE;
  }
  break;
 case 19:
  switch (get_xop(inst)) {
  case 151:
  case 152: {
   unsigned long srr1 = kvmppc_get_srr1(vcpu);
   kvmppc_set_pc(vcpu, kvmppc_get_srr0(vcpu));
   kvmppc_set_msr(vcpu, srr1);
   *advance = 0;
   break;
  }

  default:
   emulated = EMULATE_FAIL;
   break;
  }
  break;
 case 31:
  switch (get_xop(inst)) {
  case 146:
   kvmppc_set_gpr(vcpu, rt, kvmppc_get_msr(vcpu));
   break;
  case 142:
  {
   ulong rs_val = kvmppc_get_gpr(vcpu, rs);
   if (inst & 0x10000) {
    ulong new_msr = kvmppc_get_msr(vcpu);
    new_msr &= ~(MSR_RI | MSR_EE);
    new_msr |= rs_val & (MSR_RI | MSR_EE);
    kvmppc_set_msr_fast(vcpu, new_msr);
   } else
    kvmppc_set_msr(vcpu, rs_val);
   break;
  }
  case 143:
   kvmppc_set_msr(vcpu, kvmppc_get_gpr(vcpu, rs));
   break;
  case 145:
  {
   int srnum;

   srnum = kvmppc_get_field(inst, 12 + 32, 15 + 32);
   if (vcpu->arch.mmu.mfsrin) {
    u32 sr;
    sr = vcpu->arch.mmu.mfsrin(vcpu, srnum);
    kvmppc_set_gpr(vcpu, rt, sr);
   }
   break;
  }
  case 144:
  {
   int srnum;

   srnum = (kvmppc_get_gpr(vcpu, rb) >> 28) & 0xf;
   if (vcpu->arch.mmu.mfsrin) {
    u32 sr;
    sr = vcpu->arch.mmu.mfsrin(vcpu, srnum);
    kvmppc_set_gpr(vcpu, rt, sr);
   }
   break;
  }
  case 141:
   vcpu->arch.mmu.mtsrin(vcpu,
    (inst >> 16) & 0xf,
    kvmppc_get_gpr(vcpu, rs));
   break;
  case 140:
   vcpu->arch.mmu.mtsrin(vcpu,
    (kvmppc_get_gpr(vcpu, rb) >> 28) & 0xf,
    kvmppc_get_gpr(vcpu, rs));
   break;
  case 131:
  case 130:
  {
   bool large = (inst & 0x00200000) ? 1 : 0;
   ulong addr = kvmppc_get_gpr(vcpu, rb);
   vcpu->arch.mmu.tlbie(vcpu, addr, large);
   break;
  }
  case 148:
   break;
  case 134:
   if (!vcpu->arch.mmu.slbmte)
    return EMULATE_FAIL;

   vcpu->arch.mmu.slbmte(vcpu,
     kvmppc_get_gpr(vcpu, rs),
     kvmppc_get_gpr(vcpu, rb));
   break;
  case 137:
   if (!vcpu->arch.mmu.slbie)
    return EMULATE_FAIL;

   vcpu->arch.mmu.slbie(vcpu,
     kvmppc_get_gpr(vcpu, rb));
   break;
  case 138:
   if (!vcpu->arch.mmu.slbia)
    return EMULATE_FAIL;

   vcpu->arch.mmu.slbia(vcpu);
   break;
  case 139:
   if (!(inst & 1) || !vcpu->arch.mmu.slbfee) {
    return EMULATE_FAIL;
   } else {
    ulong b, t;
    ulong cr = kvmppc_get_cr(vcpu) & ~CR0_MASK;

    b = kvmppc_get_gpr(vcpu, rb);
    if (!vcpu->arch.mmu.slbfee(vcpu, b, &t))
     cr |= 2 << CR0_SHIFT;
    kvmppc_set_gpr(vcpu, rt, t);

    cr |= (vcpu->arch.regs.xer & 0x80000000) >>
     (31 - CR0_SHIFT);
    kvmppc_set_cr(vcpu, cr);
   }
   break;
  case 136:
   if (!vcpu->arch.mmu.slbmfee) {
    emulated = EMULATE_FAIL;
   } else {
    ulong t, rb_val;

    rb_val = kvmppc_get_gpr(vcpu, rb);
    t = vcpu->arch.mmu.slbmfee(vcpu, rb_val);
    kvmppc_set_gpr(vcpu, rt, t);
   }
   break;
  case 135:
   if (!vcpu->arch.mmu.slbmfev) {
    emulated = EMULATE_FAIL;
   } else {
    ulong t, rb_val;

    rb_val = kvmppc_get_gpr(vcpu, rb);
    t = vcpu->arch.mmu.slbmfev(vcpu, rb_val);
    kvmppc_set_gpr(vcpu, rt, t);
   }
   break;
  case 150:

   break;
  case 149:
  {
   ulong rb_val = kvmppc_get_gpr(vcpu, rb);
   ulong ra_val = 0;
   ulong addr, vaddr;
   u32 zeros[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
   u32 dsisr;
   int r;

   if (ra)
    ra_val = kvmppc_get_gpr(vcpu, ra);

   addr = (ra_val + rb_val) & ~31ULL;
   if (!(kvmppc_get_msr(vcpu) & MSR_SF))
    addr &= 0xffffffff;
   vaddr = addr;

   r = kvmppc_st(vcpu, &addr, 32, zeros, 1);
   if ((r == -ENOENT) || (r == -EPERM)) {
    *advance = 0;
    kvmppc_set_dar(vcpu, vaddr);
    vcpu->arch.fault_dar = vaddr;

    dsisr = DSISR_ISSTORE;
    if (r == -ENOENT)
     dsisr |= DSISR_NOHPTE;
    else if (r == -EPERM)
     dsisr |= DSISR_PROTFAULT;

    kvmppc_set_dsisr(vcpu, dsisr);
    vcpu->arch.fault_dsisr = dsisr;

    kvmppc_book3s_queue_irqprio(vcpu,
     BOOK3S_INTERRUPT_DATA_STORAGE);
   }

   break;
  }
  default:
   emulated = EMULATE_FAIL;
  }
  break;
 default:
  emulated = EMULATE_FAIL;
 }

 if (emulated == EMULATE_FAIL)
  emulated = kvmppc_emulate_paired_single(run, vcpu);

 return emulated;
}
