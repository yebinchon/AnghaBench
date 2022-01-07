
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* run; } ;
struct kvm_fpu {scalar_t__ fprs; int fpc; } ;
typedef int freg_t ;
typedef int __vector128 ;
struct TYPE_6__ {int fprs; scalar_t__ vrs; int fpc; } ;
struct TYPE_4__ {TYPE_3__ regs; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 int EINVAL ;
 scalar_t__ MACHINE_HAS_VX ;
 int convert_fp_to_vx (int *,int *) ;
 int memcpy (int ,scalar_t__*,int) ;
 scalar_t__ test_fp_ctl (int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
 int ret = 0;

 vcpu_load(vcpu);

 if (test_fp_ctl(fpu->fpc)) {
  ret = -EINVAL;
  goto out;
 }
 vcpu->run->s.regs.fpc = fpu->fpc;
 if (MACHINE_HAS_VX)
  convert_fp_to_vx((__vector128 *) vcpu->run->s.regs.vrs,
     (freg_t *) fpu->fprs);
 else
  memcpy(vcpu->run->s.regs.fprs, &fpu->fprs, sizeof(fpu->fprs));

out:
 vcpu_put(vcpu);
 return ret;
}
