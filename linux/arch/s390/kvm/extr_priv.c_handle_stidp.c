
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_9__ {TYPE_1__* sie_block; } ;
struct TYPE_13__ {int instruction_stidp; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_6__ stat; TYPE_5__* kvm; } ;
typedef int stidp_data ;
struct TYPE_14__ {int mask; } ;
struct TYPE_10__ {int cpuid; } ;
struct TYPE_11__ {TYPE_3__ model; } ;
struct TYPE_12__ {TYPE_4__ arch; } ;
struct TYPE_8__ {TYPE_7__ gpsw; } ;


 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int) ;
 int kvm_s390_get_base_disp_s (struct kvm_vcpu*,int *) ;
 int kvm_s390_inject_prog_cond (struct kvm_vcpu*,int) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int write_guest (struct kvm_vcpu*,int,int ,int*,int) ;

__attribute__((used)) static int handle_stidp(struct kvm_vcpu *vcpu)
{
 u64 stidp_data = vcpu->kvm->arch.model.cpuid;
 u64 operand2;
 int rc;
 u8 ar;

 vcpu->stat.instruction_stidp++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 operand2 = kvm_s390_get_base_disp_s(vcpu, &ar);

 if (operand2 & 7)
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);

 rc = write_guest(vcpu, operand2, ar, &stidp_data, sizeof(stidp_data));
 if (rc)
  return kvm_s390_inject_prog_cond(vcpu, rc);

 VCPU_EVENT(vcpu, 3, "STIDP: store cpu id 0x%llx", stidp_data);
 return 0;
}
