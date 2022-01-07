
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* sie_block; } ;
struct TYPE_8__ {int exit_operation_exception; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_3__* kvm; TYPE_1__ stat; } ;
struct TYPE_13__ {int addr; int mask; } ;
typedef TYPE_6__ psw_t ;
struct TYPE_11__ {int ipa; TYPE_6__ gpsw; int ipb; } ;
struct TYPE_9__ {scalar_t__ user_instr0; } ;
struct TYPE_10__ {TYPE_2__ arch; } ;


 int EOPNOTSUPP ;
 int PGM_OPERATION ;
 int PSW_MASK_ASC ;
 int PSW_MASK_DAT ;
 int PSW_MASK_PSTATE ;
 int PSW_MASK_WAIT ;
 int __LC_PGM_NEW_PSW ;
 int handle_sthyi (struct kvm_vcpu*) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int read_guest_lc (struct kvm_vcpu*,int ,TYPE_6__*,int) ;
 int trace_kvm_s390_handle_operexc (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static int handle_operexc(struct kvm_vcpu *vcpu)
{
 psw_t oldpsw, newpsw;
 int rc;

 vcpu->stat.exit_operation_exception++;
 trace_kvm_s390_handle_operexc(vcpu, vcpu->arch.sie_block->ipa,
          vcpu->arch.sie_block->ipb);

 if (vcpu->arch.sie_block->ipa == 0xb256)
  return handle_sthyi(vcpu);

 if (vcpu->arch.sie_block->ipa == 0 && vcpu->kvm->arch.user_instr0)
  return -EOPNOTSUPP;
 rc = read_guest_lc(vcpu, __LC_PGM_NEW_PSW, &newpsw, sizeof(psw_t));
 if (rc)
  return rc;
 oldpsw = vcpu->arch.sie_block->gpsw;
 if (oldpsw.addr - newpsw.addr <= 6 &&
     !(newpsw.mask & PSW_MASK_WAIT) &&
     !(oldpsw.mask & PSW_MASK_PSTATE) &&
     (newpsw.mask & PSW_MASK_ASC) == (oldpsw.mask & PSW_MASK_ASC) &&
     (newpsw.mask & PSW_MASK_DAT) == (oldpsw.mask & PSW_MASK_DAT))
  return -EOPNOTSUPP;

 return kvm_s390_inject_program_int(vcpu, PGM_OPERATION);
}
