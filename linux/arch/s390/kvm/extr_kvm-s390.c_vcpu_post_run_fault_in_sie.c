
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct kvm_s390_pgm_info {int flags; int code; } ;
struct TYPE_6__ {struct kvm_s390_pgm_info pgm; TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ gpsw; } ;


 int KVM_S390_PGM_FLAGS_ILC_VALID ;
 int PGM_ADDRESSING ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int insn_length (int) ;
 int kvm_s390_forward_psw (struct kvm_vcpu*,int) ;
 int kvm_s390_inject_prog_irq (struct kvm_vcpu*,struct kvm_s390_pgm_info*) ;
 int read_guest_instr (struct kvm_vcpu*,int ,int*,int) ;
 int trace_kvm_s390_sie_fault (struct kvm_vcpu*) ;

__attribute__((used)) static int vcpu_post_run_fault_in_sie(struct kvm_vcpu *vcpu)
{
 struct kvm_s390_pgm_info pgm_info = {
  .code = PGM_ADDRESSING,
 };
 u8 opcode, ilen;
 int rc;

 VCPU_EVENT(vcpu, 3, "%s", "fault in sie instruction");
 trace_kvm_s390_sie_fault(vcpu);
 rc = read_guest_instr(vcpu, vcpu->arch.sie_block->gpsw.addr, &opcode, 1);
 ilen = insn_length(opcode);
 if (rc < 0) {
  return rc;
 } else if (rc) {




  pgm_info = vcpu->arch.pgm;
  ilen = 4;
 }
 pgm_info.flags = ilen | KVM_S390_PGM_FLAGS_ILC_VALID;
 kvm_s390_forward_psw(vcpu, ilen);
 return kvm_s390_inject_prog_irq(vcpu, &pgm_info);
}
