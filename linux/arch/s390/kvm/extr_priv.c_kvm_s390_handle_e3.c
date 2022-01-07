
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipb; } ;


 int EOPNOTSUPP ;
 int handle_gs (struct kvm_vcpu*) ;

int kvm_s390_handle_e3(struct kvm_vcpu *vcpu)
{
 int code = vcpu->arch.sie_block->ipb & 0xff;

 if (code == 0x49 || code == 0x4d)
  return handle_gs(vcpu);
 else
  return -EOPNOTSUPP;
}
