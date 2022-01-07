
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct kvm_vcpu_arch {int pc; int pending_exceptions; struct mips_coproc* cop0; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;


 int CAUSEB_EXCCODE ;
 int CAUSEF_BD ;
 int CAUSEF_EXCCODE ;
 int CAUSEF_IV ;
 int EXCCODE_INT ;
 int IE_IRQ0 ;
 int IE_IRQ1 ;
 int IE_IRQ2 ;
 int IE_IRQ5 ;




 int ST0_ERL ;
 int ST0_EXL ;
 int ST0_IE ;
 int clear_bit (unsigned int,int *) ;
 int kvm_change_c0_guest_cause (struct mips_coproc*,int ,int) ;
 int kvm_clear_c0_guest_cause (struct mips_coproc*,int) ;
 int kvm_debug (char*,int) ;
 int kvm_err (char*) ;
 int kvm_mips_guest_exception_base (struct kvm_vcpu*) ;
 int kvm_read_c0_guest_cause (struct mips_coproc*) ;
 int kvm_read_c0_guest_status (struct mips_coproc*) ;
 int kvm_set_c0_guest_cause (struct mips_coproc*,int) ;
 int kvm_set_c0_guest_status (struct mips_coproc*,int) ;
 int kvm_write_c0_guest_epc (struct mips_coproc*,int) ;

int kvm_mips_irq_deliver_cb(struct kvm_vcpu *vcpu, unsigned int priority,
       u32 cause)
{
 int allowed = 0;
 u32 exccode;

 struct kvm_vcpu_arch *arch = &vcpu->arch;
 struct mips_coproc *cop0 = vcpu->arch.cop0;

 switch (priority) {
 case 128:
  if ((kvm_read_c0_guest_status(cop0) & ST0_IE)
      && (!(kvm_read_c0_guest_status(cop0) & (ST0_EXL | ST0_ERL)))
      && (kvm_read_c0_guest_status(cop0) & IE_IRQ5)) {
   allowed = 1;
   exccode = EXCCODE_INT;
  }
  break;

 case 131:
  if ((kvm_read_c0_guest_status(cop0) & ST0_IE)
      && (!(kvm_read_c0_guest_status(cop0) & (ST0_EXL | ST0_ERL)))
      && (kvm_read_c0_guest_status(cop0) & IE_IRQ0)) {
   allowed = 1;
   exccode = EXCCODE_INT;
  }
  break;

 case 130:
  if ((kvm_read_c0_guest_status(cop0) & ST0_IE)
      && (!(kvm_read_c0_guest_status(cop0) & (ST0_EXL | ST0_ERL)))
      && (kvm_read_c0_guest_status(cop0) & IE_IRQ1)) {
   allowed = 1;
   exccode = EXCCODE_INT;
  }
  break;

 case 129:
  if ((kvm_read_c0_guest_status(cop0) & ST0_IE)
      && (!(kvm_read_c0_guest_status(cop0) & (ST0_EXL | ST0_ERL)))
      && (kvm_read_c0_guest_status(cop0) & IE_IRQ2)) {
   allowed = 1;
   exccode = EXCCODE_INT;
  }
  break;

 default:
  break;
 }


 if (allowed) {
  if ((kvm_read_c0_guest_status(cop0) & ST0_EXL) == 0) {

   kvm_write_c0_guest_epc(cop0, arch->pc);
   kvm_set_c0_guest_status(cop0, ST0_EXL);

   if (cause & CAUSEF_BD)
    kvm_set_c0_guest_cause(cop0, CAUSEF_BD);
   else
    kvm_clear_c0_guest_cause(cop0, CAUSEF_BD);

   kvm_debug("Delivering INT @ pc %#lx\n", arch->pc);

  } else
   kvm_err("Trying to deliver interrupt when EXL is already set\n");

  kvm_change_c0_guest_cause(cop0, CAUSEF_EXCCODE,
       (exccode << CAUSEB_EXCCODE));


  arch->pc = kvm_mips_guest_exception_base(vcpu);
  if (kvm_read_c0_guest_cause(cop0) & CAUSEF_IV)
   arch->pc += 0x200;
  else
   arch->pc += 0x180;

  clear_bit(priority, &vcpu->arch.pending_exceptions);
 }

 return allowed;
}
