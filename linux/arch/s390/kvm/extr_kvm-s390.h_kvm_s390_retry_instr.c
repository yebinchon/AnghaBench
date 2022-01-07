
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int icptstatus; } ;


 int kvm_s390_get_ilen (struct kvm_vcpu*) ;
 int kvm_s390_rewind_psw (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline void kvm_s390_retry_instr(struct kvm_vcpu *vcpu)
{

 vcpu->arch.sie_block->icptstatus &= ~0x02;
 kvm_s390_rewind_psw(vcpu, kvm_s390_get_ilen(vcpu));
}
