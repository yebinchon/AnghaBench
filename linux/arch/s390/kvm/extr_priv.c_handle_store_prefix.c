
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
struct TYPE_5__ {int instruction_stpx; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ stat; } ;
typedef int address ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;


 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ,int) ;
 int kvm_s390_get_base_disp_s (struct kvm_vcpu*,int *) ;
 int kvm_s390_get_prefix (struct kvm_vcpu*) ;
 int kvm_s390_inject_prog_cond (struct kvm_vcpu*,int) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int trace_kvm_s390_handle_prefix (struct kvm_vcpu*,int ,int ) ;
 int write_guest (struct kvm_vcpu*,int,int ,int *,int) ;

__attribute__((used)) static int handle_store_prefix(struct kvm_vcpu *vcpu)
{
 u64 operand2;
 u32 address;
 int rc;
 u8 ar;

 vcpu->stat.instruction_stpx++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 operand2 = kvm_s390_get_base_disp_s(vcpu, &ar);


 if (operand2 & 3)
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);

 address = kvm_s390_get_prefix(vcpu);


 rc = write_guest(vcpu, operand2, ar, &address, sizeof(address));
 if (rc)
  return kvm_s390_inject_prog_cond(vcpu, rc);

 VCPU_EVENT(vcpu, 3, "STPX: storing prefix 0x%x into 0x%llx", address, operand2);
 trace_kvm_s390_handle_prefix(vcpu, 0, address);
 return 0;
}
