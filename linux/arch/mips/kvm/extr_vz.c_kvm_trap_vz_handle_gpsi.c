
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int opcode; int re; int rd; int rt; int rs; } ;
struct TYPE_3__ {int func; } ;
union mips_instruction {int word; TYPE_2__ r_format; TYPE_1__ spec3_format; } ;
typedef int u32 ;
struct kvm_vcpu_arch {long* gprs; } ;
struct kvm_vcpu {struct kvm_run* run; struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CAUSEF_BD ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int KVM_TRACE_EXIT_CACHE ;
 int KVM_TRACE_HWR (int,int) ;
 int KVM_TRACE_RDHWR ;




 int kvm_arch_vcpu_dump_regs (struct kvm_vcpu*) ;
 int kvm_err (char*,int*,int ) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int *) ;
 scalar_t__ kvm_mips_read_count (struct kvm_vcpu*) ;
 int kvm_vz_gpsi_cache (union mips_instruction,int*,int,struct kvm_run*,struct kvm_vcpu*) ;
 int kvm_vz_gpsi_cop0 (union mips_instruction,int*,int,struct kvm_run*,struct kvm_vcpu*) ;


 int trace_kvm_exit (struct kvm_vcpu*,int ) ;
 int trace_kvm_hwr (struct kvm_vcpu*,int ,int ,long) ;
 int update_pc (struct kvm_vcpu*,int) ;

__attribute__((used)) static enum emulation_result kvm_trap_vz_handle_gpsi(u32 cause, u32 *opc,
           struct kvm_vcpu *vcpu)
{
 enum emulation_result er = EMULATE_DONE;
 struct kvm_vcpu_arch *arch = &vcpu->arch;
 struct kvm_run *run = vcpu->run;
 union mips_instruction inst;
 int rd, rt, sel;
 int err;




 if (cause & CAUSEF_BD)
  opc += 1;
 err = kvm_get_badinstr(opc, vcpu, &inst.word);
 if (err)
  return EMULATE_FAIL;

 switch (inst.r_format.opcode) {
 case 130:
  er = kvm_vz_gpsi_cop0(inst, opc, cause, run, vcpu);
  break;

 case 131:
  trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
  er = kvm_vz_gpsi_cache(inst, opc, cause, run, vcpu);
  break;

 case 128:
  switch (inst.spec3_format.func) {






  case 129:
   if (inst.r_format.rs || (inst.r_format.re >> 3))
    goto unknown;

   rd = inst.r_format.rd;
   rt = inst.r_format.rt;
   sel = inst.r_format.re & 0x7;

   switch (rd) {
   case 133:
    arch->gprs[rt] =
     (long)(int)kvm_mips_read_count(vcpu);
    break;
   default:
    trace_kvm_hwr(vcpu, KVM_TRACE_RDHWR,
           KVM_TRACE_HWR(rd, sel), 0);
    goto unknown;
   };

   trace_kvm_hwr(vcpu, KVM_TRACE_RDHWR,
          KVM_TRACE_HWR(rd, sel), arch->gprs[rt]);

   er = update_pc(vcpu, cause);
   break;
  default:
   goto unknown;
  };
  break;
unknown:

 default:
  kvm_err("GPSI exception not supported (%p/%#x)\n",
    opc, inst.word);
  kvm_arch_vcpu_dump_regs(vcpu);
  er = EMULATE_FAIL;
  break;
 }

 return er;
}
