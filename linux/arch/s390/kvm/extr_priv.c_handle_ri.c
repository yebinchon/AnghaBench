
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct TYPE_4__ {int instruction_ri; } ;
struct kvm_vcpu {TYPE_3__ arch; int kvm; TYPE_1__ stat; } ;
struct TYPE_5__ {int ecb3; } ;


 int ECB3_RI ;
 int PGM_OPERATION ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int kvm_s390_retry_instr (struct kvm_vcpu*) ;
 scalar_t__ test_kvm_facility (int ,int) ;

__attribute__((used)) static int handle_ri(struct kvm_vcpu *vcpu)
{
 vcpu->stat.instruction_ri++;

 if (test_kvm_facility(vcpu->kvm, 64)) {
  VCPU_EVENT(vcpu, 3, "%s", "ENABLE: RI (lazy)");
  vcpu->arch.sie_block->ecb3 |= ECB3_RI;
  kvm_s390_retry_instr(vcpu);
  return 0;
 } else
  return kvm_s390_inject_program_int(vcpu, PGM_OPERATION);
}
