
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opcode; scalar_t__ rs; scalar_t__ z; int rt; int rd; int sel; } ;
union mips_instruction {int word; TYPE_1__ c0r_format; } ;
typedef int u32 ;
struct kvm_vcpu_arch {unsigned int* gprs; int aux_inuse; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_4__ {int fpu_id; } ;


 int CAUSEF_BD ;
 int CAUSEF_DC ;
 int CAUSEF_IP0 ;
 int CAUSEF_IP1 ;
 int CAUSEF_IV ;
 int CAUSEF_WP ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int KVM_MIPS_AUX_FPU ;
 int KVM_MIPS_AUX_MSA ;
 int KVM_TRACE_COP0 (int,int) ;
 int KVM_TRACE_MTC0 ;
 unsigned int MIPS_CONF5_FRE ;
 int MIPS_CP0_CAUSE ;
 int MIPS_CP0_CONFIG ;
 int MIPS_CP0_STATUS ;
 int MIPS_FPIR_F64 ;
 unsigned int ST0_CU1 ;
 unsigned int ST0_FR ;
 TYPE_2__ boot_cpu_data ;
 int change_c0_config5 (unsigned int,unsigned int) ;
 scalar_t__ cop0_op ;
 int kvm_drop_fpu (struct kvm_vcpu*) ;
 int kvm_err (char*,int*,int ) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int *) ;
 int kvm_lose_fpu (struct kvm_vcpu*) ;
 int kvm_mips_count_disable_cause (struct kvm_vcpu*) ;
 int kvm_mips_count_enable_cause (struct kvm_vcpu*) ;
 int kvm_mips_guest_has_fpu (struct kvm_vcpu_arch*) ;
 unsigned int kvm_vz_config5_guest_wrmask (struct kvm_vcpu*) ;
 int kvm_vz_lose_htimer (struct kvm_vcpu*) ;
 scalar_t__ mtc_op ;
 int preempt_disable () ;
 int preempt_enable () ;
 int read_gc0_cause () ;
 unsigned int read_gc0_config5 () ;
 unsigned int read_gc0_status () ;
 int trace_kvm_hwr (struct kvm_vcpu*,int ,int ,unsigned int) ;
 int update_pc (struct kvm_vcpu*,int) ;
 int write_gc0_cause (int) ;
 int write_gc0_config5 (unsigned int) ;
 int write_gc0_intctl (unsigned int) ;
 int write_gc0_status (unsigned int) ;

__attribute__((used)) static enum emulation_result kvm_trap_vz_handle_gsfc(u32 cause, u32 *opc,
           struct kvm_vcpu *vcpu)
{
 enum emulation_result er = EMULATE_DONE;
 struct kvm_vcpu_arch *arch = &vcpu->arch;
 union mips_instruction inst;
 int err;




 if (cause & CAUSEF_BD)
  opc += 1;
 err = kvm_get_badinstr(opc, vcpu, &inst.word);
 if (err)
  return EMULATE_FAIL;


 if (inst.c0r_format.opcode == cop0_op &&
     inst.c0r_format.rs == mtc_op &&
     inst.c0r_format.z == 0) {
  int rt = inst.c0r_format.rt;
  int rd = inst.c0r_format.rd;
  int sel = inst.c0r_format.sel;
  unsigned int val = arch->gprs[rt];
  unsigned int old_val, change;

  trace_kvm_hwr(vcpu, KVM_TRACE_MTC0, KVM_TRACE_COP0(rd, sel),
         val);

  if ((rd == MIPS_CP0_STATUS) && (sel == 0)) {

   if (!kvm_mips_guest_has_fpu(&vcpu->arch))
    val &= ~(ST0_CU1 | ST0_FR);





   if (!(boot_cpu_data.fpu_id & MIPS_FPIR_F64))
    val &= ~ST0_FR;

   old_val = read_gc0_status();
   change = val ^ old_val;

   if (change & ST0_FR) {





    kvm_drop_fpu(vcpu);
   }
   if (change & ST0_CU1 && !(val & ST0_FR) &&
       vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA)
    kvm_lose_fpu(vcpu);

   write_gc0_status(val);
  } else if ((rd == MIPS_CP0_CAUSE) && (sel == 0)) {
   u32 old_cause = read_gc0_cause();
   u32 change = old_cause ^ val;


   if (change & CAUSEF_DC) {
    if (val & CAUSEF_DC) {
     kvm_vz_lose_htimer(vcpu);
     kvm_mips_count_disable_cause(vcpu);
    } else {
     kvm_mips_count_enable_cause(vcpu);
    }
   }


   change &= (CAUSEF_DC | CAUSEF_IV | CAUSEF_WP |
       CAUSEF_IP0 | CAUSEF_IP1);


   change &= ~CAUSEF_WP | old_cause;

   write_gc0_cause(old_cause ^ change);
  } else if ((rd == MIPS_CP0_STATUS) && (sel == 1)) {
   write_gc0_intctl(val);
  } else if ((rd == MIPS_CP0_CONFIG) && (sel == 5)) {
   old_val = read_gc0_config5();
   change = val ^ old_val;

   preempt_disable();





   if (change & MIPS_CONF5_FRE &&
       vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU)
    change_c0_config5(MIPS_CONF5_FRE, val);

   preempt_enable();

   val = old_val ^
    (change & kvm_vz_config5_guest_wrmask(vcpu));
   write_gc0_config5(val);
  } else {
   kvm_err("Handle GSFC, unsupported field change @ %p: %#x\n",
       opc, inst.word);
   er = EMULATE_FAIL;
  }

  if (er != EMULATE_FAIL)
   er = update_pc(vcpu, cause);
 } else {
  kvm_err("Handle GSFC, unrecognized instruction @ %p: %#x\n",
   opc, inst.word);
  er = EMULATE_FAIL;
 }

 return er;
}
