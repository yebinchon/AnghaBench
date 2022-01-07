
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_3__* run; } ;
struct kvm_fpu {int fpc; scalar_t__ fprs; } ;
typedef int freg_t ;
typedef int __vector128 ;
struct TYPE_4__ {int fpc; int fprs; scalar_t__ vrs; } ;
struct TYPE_5__ {TYPE_1__ regs; } ;
struct TYPE_6__ {TYPE_2__ s; } ;


 scalar_t__ MACHINE_HAS_VX ;
 int convert_vx_to_fp (int *,int *) ;
 int memcpy (scalar_t__,int ,int) ;
 int save_fpu_regs () ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
 vcpu_load(vcpu);


 save_fpu_regs();
 if (MACHINE_HAS_VX)
  convert_vx_to_fp((freg_t *) fpu->fprs,
     (__vector128 *) vcpu->run->s.regs.vrs);
 else
  memcpy(fpu->fprs, vcpu->run->s.regs.fprs, sizeof(fpu->fprs));
 fpu->fpc = vcpu->run->s.regs.fpc;

 vcpu_put(vcpu);
 return 0;
}
