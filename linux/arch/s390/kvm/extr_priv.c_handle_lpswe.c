
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_9__ {TYPE_2__* sie_block; } ;
struct TYPE_7__ {int instruction_lpswe; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__ stat; } ;
struct TYPE_10__ {int mask; } ;
typedef TYPE_4__ psw_t ;
typedef int new_psw ;
struct TYPE_8__ {TYPE_4__ gpsw; } ;


 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 int is_valid_psw (TYPE_4__*) ;
 int kvm_s390_get_base_disp_s (struct kvm_vcpu*,int *) ;
 int kvm_s390_inject_prog_cond (struct kvm_vcpu*,int) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int read_guest (struct kvm_vcpu*,int,int ,TYPE_4__*,int) ;

__attribute__((used)) static int handle_lpswe(struct kvm_vcpu *vcpu)
{
 psw_t new_psw;
 u64 addr;
 int rc;
 u8 ar;

 vcpu->stat.instruction_lpswe++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 addr = kvm_s390_get_base_disp_s(vcpu, &ar);
 if (addr & 7)
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);
 rc = read_guest(vcpu, addr, ar, &new_psw, sizeof(new_psw));
 if (rc)
  return kvm_s390_inject_prog_cond(vcpu, rc);
 vcpu->arch.sie_block->gpsw = new_psw;
 if (!is_valid_psw(&vcpu->arch.sie_block->gpsw))
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);
 return 0;
}
