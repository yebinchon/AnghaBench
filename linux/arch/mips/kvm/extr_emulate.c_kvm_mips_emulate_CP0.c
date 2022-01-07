
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t rt; size_t rd; size_t sel; int rs; } ;
struct TYPE_6__ {int sc; } ;
struct TYPE_7__ {int func; scalar_t__ co; } ;
union mips_instruction {TYPE_3__ c0r_format; TYPE_1__ mfmc0_format; TYPE_2__ co_format; } ;
typedef size_t u32 ;
struct mips_coproc {size_t** reg; int ** stat; } ;
struct TYPE_9__ {unsigned long pc; size_t* gprs; int aux_inuse; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct kvm_run {int dummy; } ;
typedef void* s32 ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_10__ {int fpu_id; } ;


 size_t CAUSEF_DC ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int KVM_MIPS_AUX_FPU ;
 int KVM_MIPS_AUX_MSA ;
 size_t KVM_MIPS_GUEST_TLB_SIZE ;
 int KVM_TRACE_COP0 (size_t,size_t) ;
 int KVM_TRACE_DMFC0 ;
 int KVM_TRACE_DMTC0 ;
 int KVM_TRACE_MFC0 ;
 int KVM_TRACE_MTC0 ;
 int MIPS_CONF3_ULRI ;
 unsigned int MIPS_CONF5_FRE ;
 unsigned int MIPS_CONF5_MSAEN ;
 size_t MIPS_CP0_CAUSE ;
 size_t MIPS_CP0_COMPARE ;
 size_t MIPS_CP0_CONFIG ;
 size_t MIPS_CP0_COUNT ;
 size_t MIPS_CP0_ERRCTL ;
 size_t MIPS_CP0_HWRENA ;
 size_t MIPS_CP0_PRID ;
 size_t MIPS_CP0_STATUS ;
 size_t MIPS_CP0_TLB_HI ;
 size_t MIPS_CP0_TLB_INDEX ;
 int MIPS_FPIR_F64 ;
 size_t MIPS_HWRENA_CC ;
 size_t MIPS_HWRENA_CCRES ;
 size_t MIPS_HWRENA_CPUNUM ;
 size_t MIPS_HWRENA_SYNCISTEP ;
 size_t MIPS_HWRENA_ULR ;
 unsigned int ST0_CU1 ;
 unsigned int ST0_FR ;
 int ST0_IE ;
 unsigned int ST0_NMI ;
 int change_c0_config5 (unsigned int,unsigned int) ;
 int change_c0_status (unsigned int,unsigned int) ;
 TYPE_5__ current_cpu_data ;




 int kvm_change_c0_guest_cause (struct mips_coproc*,int,size_t) ;
 int kvm_change_c0_guest_ebase (struct mips_coproc*,int,size_t) ;
 int kvm_clear_c0_guest_status (struct mips_coproc*,int ) ;
 int kvm_debug (char*,size_t,...) ;
 int kvm_drop_fpu (struct kvm_vcpu*) ;
 int kvm_err (char*,...) ;
 int kvm_lose_fpu (struct kvm_vcpu*) ;
 int kvm_mips_change_entryhi (struct kvm_vcpu*,size_t) ;
 unsigned int kvm_mips_config5_wrmask (struct kvm_vcpu*) ;
 int kvm_mips_count_disable_cause (struct kvm_vcpu*) ;
 int kvm_mips_count_enable_cause (struct kvm_vcpu*) ;
 int kvm_mips_emul_eret (struct kvm_vcpu*) ;
 int kvm_mips_emul_hypcall (struct kvm_vcpu*,union mips_instruction) ;
 int kvm_mips_emul_tlbp (struct kvm_vcpu*) ;
 int kvm_mips_emul_tlbr (struct kvm_vcpu*) ;
 int kvm_mips_emul_tlbwi (struct kvm_vcpu*) ;
 int kvm_mips_emul_tlbwr (struct kvm_vcpu*) ;
 int kvm_mips_emul_wait (struct kvm_vcpu*) ;
 int kvm_mips_guest_has_fpu (TYPE_4__*) ;
 int kvm_mips_read_count (struct kvm_vcpu*) ;
 int kvm_mips_trans_mfc0 (union mips_instruction,size_t*,struct kvm_vcpu*) ;
 int kvm_mips_trans_mtc0 (union mips_instruction,size_t*,struct kvm_vcpu*) ;
 int kvm_mips_write_compare (struct kvm_vcpu*,size_t,int) ;
 int kvm_mips_write_count (struct kvm_vcpu*,size_t) ;
 size_t kvm_read_c0_guest_cause (struct mips_coproc*) ;
 int kvm_read_c0_guest_config3 (struct mips_coproc*) ;
 unsigned int kvm_read_c0_guest_config5 (struct mips_coproc*) ;
 void* kvm_read_c0_guest_status (struct mips_coproc*) ;
 int kvm_set_c0_guest_status (struct mips_coproc*,int ) ;
 int kvm_write_c0_guest_config5 (struct mips_coproc*,unsigned int) ;
 int kvm_write_c0_guest_status (struct mips_coproc*,unsigned int) ;



 int preempt_disable () ;
 int preempt_enable () ;





 int trace_kvm_hwr (struct kvm_vcpu*,int ,int ,size_t) ;
 int update_pc (struct kvm_vcpu*,size_t) ;



enum emulation_result kvm_mips_emulate_CP0(union mips_instruction inst,
        u32 *opc, u32 cause,
        struct kvm_run *run,
        struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 enum emulation_result er = EMULATE_DONE;
 u32 rt, rd, sel;
 unsigned long curr_pc;





 curr_pc = vcpu->arch.pc;
 er = update_pc(vcpu, cause);
 if (er == EMULATE_FAIL)
  return er;

 if (inst.co_format.co) {
  switch (inst.co_format.func) {
  case 132:
   er = kvm_mips_emul_tlbr(vcpu);
   break;
  case 131:
   er = kvm_mips_emul_tlbwi(vcpu);
   break;
  case 130:
   er = kvm_mips_emul_tlbwr(vcpu);
   break;
  case 133:
   er = kvm_mips_emul_tlbp(vcpu);
   break;
  case 134:
   kvm_err("!!!COP0_RFE!!!\n");
   break;
  case 139:
   er = kvm_mips_emul_eret(vcpu);
   goto dont_update_pc;
  case 129:
   er = kvm_mips_emul_wait(vcpu);
   break;
  case 138:
   er = kvm_mips_emul_hypcall(vcpu, inst);
   break;
  }
 } else {
  rt = inst.c0r_format.rt;
  rd = inst.c0r_format.rd;
  sel = inst.c0r_format.sel;

  switch (inst.c0r_format.rs) {
  case 137:




   if ((rd == MIPS_CP0_COUNT) && (sel == 0)) {
    vcpu->arch.gprs[rt] =
        (s32)kvm_mips_read_count(vcpu);
   } else if ((rd == MIPS_CP0_ERRCTL) && (sel == 0)) {
    vcpu->arch.gprs[rt] = 0x0;



   } else {
    vcpu->arch.gprs[rt] = (s32)cop0->reg[rd][sel];




   }

   trace_kvm_hwr(vcpu, KVM_TRACE_MFC0,
          KVM_TRACE_COP0(rd, sel),
          vcpu->arch.gprs[rt]);
   break;

  case 141:
   vcpu->arch.gprs[rt] = cop0->reg[rd][sel];

   trace_kvm_hwr(vcpu, KVM_TRACE_DMFC0,
          KVM_TRACE_COP0(rd, sel),
          vcpu->arch.gprs[rt]);
   break;

  case 135:



   trace_kvm_hwr(vcpu, KVM_TRACE_MTC0,
          KVM_TRACE_COP0(rd, sel),
          vcpu->arch.gprs[rt]);

   if ((rd == MIPS_CP0_TLB_INDEX)
       && (vcpu->arch.gprs[rt] >=
    KVM_MIPS_GUEST_TLB_SIZE)) {
    kvm_err("Invalid TLB Index: %ld",
     vcpu->arch.gprs[rt]);
    er = EMULATE_FAIL;
    break;
   }
   if ((rd == MIPS_CP0_PRID) && (sel == 1)) {




    kvm_change_c0_guest_ebase(cop0, 0x1ffff000,
         vcpu->arch.gprs[rt]);
   } else if (rd == MIPS_CP0_TLB_HI && sel == 0) {
    kvm_mips_change_entryhi(vcpu,
       vcpu->arch.gprs[rt]);
   }

   else if ((rd == MIPS_CP0_COUNT) && (sel == 0)) {
    kvm_mips_write_count(vcpu, vcpu->arch.gprs[rt]);
    goto done;
   } else if ((rd == MIPS_CP0_COMPARE) && (sel == 0)) {


    kvm_mips_write_compare(vcpu,
             vcpu->arch.gprs[rt],
             1);
   } else if ((rd == MIPS_CP0_STATUS) && (sel == 0)) {
    unsigned int old_val, val, change;

    old_val = kvm_read_c0_guest_status(cop0);
    val = vcpu->arch.gprs[rt];
    change = val ^ old_val;


    val &= ~ST0_NMI;






    if (!kvm_mips_guest_has_fpu(&vcpu->arch))
     val &= ~(ST0_CU1 | ST0_FR);





    if (!(current_cpu_data.fpu_id & MIPS_FPIR_F64))
     val &= ~ST0_FR;



    preempt_disable();






    if (change & ST0_FR)
     kvm_drop_fpu(vcpu);
    if (change & ST0_CU1 && !(val & ST0_FR) &&
        vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA)
     kvm_lose_fpu(vcpu);
    if (change & ST0_CU1 &&
        vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU)
     change_c0_status(ST0_CU1, val);

    preempt_enable();

    kvm_write_c0_guest_status(cop0, val);
   } else if ((rd == MIPS_CP0_CONFIG) && (sel == 5)) {
    unsigned int old_val, val, change, wrmask;

    old_val = kvm_read_c0_guest_config5(cop0);
    val = vcpu->arch.gprs[rt];


    wrmask = kvm_mips_config5_wrmask(vcpu);
    change = (val ^ old_val) & wrmask;
    val = old_val ^ change;



    preempt_disable();





    if (change & MIPS_CONF5_FRE &&
        vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU)
     change_c0_config5(MIPS_CONF5_FRE, val);







    if (change & MIPS_CONF5_MSAEN &&
        vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA)
     change_c0_config5(MIPS_CONF5_MSAEN,
         val);

    preempt_enable();

    kvm_write_c0_guest_config5(cop0, val);
   } else if ((rd == MIPS_CP0_CAUSE) && (sel == 0)) {
    u32 old_cause, new_cause;

    old_cause = kvm_read_c0_guest_cause(cop0);
    new_cause = vcpu->arch.gprs[rt];

    kvm_change_c0_guest_cause(cop0, 0x08800300,
         new_cause);

    if ((old_cause ^ new_cause) & CAUSEF_DC) {
     if (new_cause & CAUSEF_DC)
      kvm_mips_count_disable_cause(vcpu);
     else
      kvm_mips_count_enable_cause(vcpu);
    }
   } else if ((rd == MIPS_CP0_HWRENA) && (sel == 0)) {
    u32 mask = MIPS_HWRENA_CPUNUM |
        MIPS_HWRENA_SYNCISTEP |
        MIPS_HWRENA_CC |
        MIPS_HWRENA_CCRES;

    if (kvm_read_c0_guest_config3(cop0) &
        MIPS_CONF3_ULRI)
     mask |= MIPS_HWRENA_ULR;
    cop0->reg[rd][sel] = vcpu->arch.gprs[rt] & mask;
   } else {
    cop0->reg[rd][sel] = vcpu->arch.gprs[rt];



   }
   break;

  case 140:
   kvm_err("!!!!!!![%#lx]dmtc_op: rt: %d, rd: %d, sel: %d!!!!!!\n",
    vcpu->arch.pc, rt, rd, sel);
   trace_kvm_hwr(vcpu, KVM_TRACE_DMTC0,
          KVM_TRACE_COP0(rd, sel),
          vcpu->arch.gprs[rt]);
   er = EMULATE_FAIL;
   break;

  case 136:



   if (rt != 0)
    vcpu->arch.gprs[rt] =
        kvm_read_c0_guest_status(cop0);

   if (inst.mfmc0_format.sc) {
    kvm_debug("[%#lx] mfmc0_op: EI\n",
       vcpu->arch.pc);
    kvm_set_c0_guest_status(cop0, ST0_IE);
   } else {
    kvm_debug("[%#lx] mfmc0_op: DI\n",
       vcpu->arch.pc);
    kvm_clear_c0_guest_status(cop0, ST0_IE);
   }

   break;

  case 128:
   {
    u32 css = cop0->reg[MIPS_CP0_STATUS][2] & 0xf;
    u32 pss =
        (cop0->reg[MIPS_CP0_STATUS][2] >> 6) & 0xf;




    if (css || pss) {
     er = EMULATE_FAIL;
     break;
    }
    kvm_debug("WRPGPR[%d][%d] = %#lx\n", pss, rd,
       vcpu->arch.gprs[rt]);
    vcpu->arch.gprs[rd] = vcpu->arch.gprs[rt];
   }
   break;
  default:
   kvm_err("[%#lx]MachEmulateCP0: unsupported COP0, copz: 0x%x\n",
    vcpu->arch.pc, inst.c0r_format.rs);
   er = EMULATE_FAIL;
   break;
  }
 }

done:

 if (er == EMULATE_FAIL)
  vcpu->arch.pc = curr_pc;

dont_update_pc:






 return er;
}
