
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct kvm_vcpu_arch {unsigned long host_cp0_badvaddr; void* pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CAUSEB_EXCCODE ;
 int CAUSEF_BD ;
 int EMULATE_DONE ;
 int EXCCODE_TLBS ;
 unsigned long KVM_ENTRYHI_ASID ;
 int ST0_EXL ;
 unsigned long VPN2_MASK ;
 int kvm_change_c0_guest_cause (struct mips_coproc*,int,int) ;
 int kvm_clear_c0_guest_cause (struct mips_coproc*,int) ;
 int kvm_debug (char*,void*) ;
 void* kvm_mips_guest_exception_base (struct kvm_vcpu*) ;
 unsigned long kvm_read_c0_guest_entryhi (struct mips_coproc*) ;
 int kvm_read_c0_guest_status (struct mips_coproc*) ;
 int kvm_set_c0_guest_cause (struct mips_coproc*,int) ;
 int kvm_set_c0_guest_status (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_badvaddr (struct mips_coproc*,unsigned long) ;
 int kvm_write_c0_guest_entryhi (struct mips_coproc*,unsigned long) ;
 int kvm_write_c0_guest_epc (struct mips_coproc*,void*) ;

enum emulation_result kvm_mips_emulate_tlbmiss_st(u32 cause,
        u32 *opc,
        struct kvm_run *run,
        struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 struct kvm_vcpu_arch *arch = &vcpu->arch;
 unsigned long entryhi = (vcpu->arch.host_cp0_badvaddr & VPN2_MASK) |
   (kvm_read_c0_guest_entryhi(cop0) & KVM_ENTRYHI_ASID);

 if ((kvm_read_c0_guest_status(cop0) & ST0_EXL) == 0) {

  kvm_write_c0_guest_epc(cop0, arch->pc);
  kvm_set_c0_guest_status(cop0, ST0_EXL);

  if (cause & CAUSEF_BD)
   kvm_set_c0_guest_cause(cop0, CAUSEF_BD);
  else
   kvm_clear_c0_guest_cause(cop0, CAUSEF_BD);

  kvm_debug("[EXL == 0] Delivering TLB MISS @ pc %#lx\n",
     arch->pc);


  arch->pc = kvm_mips_guest_exception_base(vcpu) + 0x0;
 } else {
  kvm_debug("[EXL == 1] Delivering TLB MISS @ pc %#lx\n",
     arch->pc);
  arch->pc = kvm_mips_guest_exception_base(vcpu) + 0x180;
 }

 kvm_change_c0_guest_cause(cop0, (0xff),
      (EXCCODE_TLBS << CAUSEB_EXCCODE));


 kvm_write_c0_guest_badvaddr(cop0, vcpu->arch.host_cp0_badvaddr);

 kvm_write_c0_guest_entryhi(cop0, entryhi);

 return EMULATE_DONE;
}
