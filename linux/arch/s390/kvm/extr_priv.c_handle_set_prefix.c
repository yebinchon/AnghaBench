
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int instruction_spx; } ;
struct kvm_vcpu {int kvm; TYPE_4__ arch; TYPE_1__ stat; } ;
typedef int address ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;


 int PGM_ADDRESSING ;
 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 scalar_t__ kvm_is_error_gpa (int ,int) ;
 int kvm_s390_get_base_disp_s (struct kvm_vcpu*,int *) ;
 int kvm_s390_inject_prog_cond (struct kvm_vcpu*,int) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int kvm_s390_set_prefix (struct kvm_vcpu*,int) ;
 int read_guest (struct kvm_vcpu*,int,int ,int*,int) ;
 int trace_kvm_s390_handle_prefix (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static int handle_set_prefix(struct kvm_vcpu *vcpu)
{
 u64 operand2;
 u32 address;
 int rc;
 u8 ar;

 vcpu->stat.instruction_spx++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 operand2 = kvm_s390_get_base_disp_s(vcpu, &ar);


 if (operand2 & 3)
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);


 rc = read_guest(vcpu, operand2, ar, &address, sizeof(address));
 if (rc)
  return kvm_s390_inject_prog_cond(vcpu, rc);

 address &= 0x7fffe000u;






 if (kvm_is_error_gpa(vcpu->kvm, address))
  return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);

 kvm_s390_set_prefix(vcpu, address);
 trace_kvm_s390_handle_prefix(vcpu, 1, address);
 return 0;
}
