
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction_ptff; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int kvm_s390_set_psw_cc (struct kvm_vcpu*,int) ;

__attribute__((used)) static int handle_ptff(struct kvm_vcpu *vcpu)
{
 vcpu->stat.instruction_ptff++;


 kvm_s390_set_psw_cc(vcpu, 3);
 return 0;
}
