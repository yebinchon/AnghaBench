
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct kvm_vcpu_arch {scalar_t__ pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CAUSEB_CE ;
 int CAUSEB_EXCCODE ;
 int CAUSEF_BD ;
 int CAUSEF_CE ;
 int EMULATE_DONE ;
 int EXCCODE_CPU ;
 int ST0_EXL ;
 int kvm_change_c0_guest_cause (struct mips_coproc*,int,int) ;
 int kvm_clear_c0_guest_cause (struct mips_coproc*,int) ;
 scalar_t__ kvm_mips_guest_exception_base (struct kvm_vcpu*) ;
 int kvm_read_c0_guest_status (struct mips_coproc*) ;
 int kvm_set_c0_guest_cause (struct mips_coproc*,int) ;
 int kvm_set_c0_guest_status (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_epc (struct mips_coproc*,scalar_t__) ;

enum emulation_result kvm_mips_emulate_fpu_exc(u32 cause,
            u32 *opc,
            struct kvm_run *run,
            struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 struct kvm_vcpu_arch *arch = &vcpu->arch;

 if ((kvm_read_c0_guest_status(cop0) & ST0_EXL) == 0) {

  kvm_write_c0_guest_epc(cop0, arch->pc);
  kvm_set_c0_guest_status(cop0, ST0_EXL);

  if (cause & CAUSEF_BD)
   kvm_set_c0_guest_cause(cop0, CAUSEF_BD);
  else
   kvm_clear_c0_guest_cause(cop0, CAUSEF_BD);

 }

 arch->pc = kvm_mips_guest_exception_base(vcpu) + 0x180;

 kvm_change_c0_guest_cause(cop0, (0xff),
      (EXCCODE_CPU << CAUSEB_EXCCODE));
 kvm_change_c0_guest_cause(cop0, (CAUSEF_CE), (0x1 << CAUSEB_CE));

 return EMULATE_DONE;
}
