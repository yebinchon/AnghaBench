
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
typedef int u16 ;
struct kvm_vcpu {TYPE_2__* run; } ;
struct TYPE_3__ {int sel2; void* sel1; void* fc; void* ar; int addr; } ;
struct TYPE_4__ {TYPE_1__ s390_stsi; int exit_reason; } ;


 int KVM_EXIT_S390_STSI ;

__attribute__((used)) static void insert_stsi_usr_data(struct kvm_vcpu *vcpu, u64 addr, u8 ar,
     u8 fc, u8 sel1, u16 sel2)
{
 vcpu->run->exit_reason = KVM_EXIT_S390_STSI;
 vcpu->run->s390_stsi.addr = addr;
 vcpu->run->s390_stsi.ar = ar;
 vcpu->run->s390_stsi.fc = fc;
 vcpu->run->s390_stsi.sel1 = sel1;
 vcpu->run->s390_stsi.sel2 = sel2;
}
