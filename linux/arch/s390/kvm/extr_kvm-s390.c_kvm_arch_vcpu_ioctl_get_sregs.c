
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_3__* run; } ;
struct kvm_sregs {int crs; int acrs; } ;
struct TYPE_9__ {int gcr; } ;
struct TYPE_6__ {int acrs; } ;
struct TYPE_7__ {TYPE_1__ regs; } ;
struct TYPE_8__ {TYPE_2__ s; } ;


 int memcpy (int *,int *,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
      struct kvm_sregs *sregs)
{
 vcpu_load(vcpu);

 memcpy(&sregs->acrs, &vcpu->run->s.regs.acrs, sizeof(sregs->acrs));
 memcpy(&sregs->crs, &vcpu->arch.sie_block->gcr, sizeof(sregs->crs));

 vcpu_put(vcpu);
 return 0;
}
