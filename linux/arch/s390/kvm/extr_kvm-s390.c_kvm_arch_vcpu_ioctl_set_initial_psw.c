
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* run; } ;
struct TYPE_5__ {int addr; int mask; } ;
typedef TYPE_2__ psw_t ;
struct TYPE_4__ {int psw_addr; int psw_mask; } ;


 int EBUSY ;
 int is_vcpu_stopped (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_arch_vcpu_ioctl_set_initial_psw(struct kvm_vcpu *vcpu, psw_t psw)
{
 int rc = 0;

 if (!is_vcpu_stopped(vcpu))
  rc = -EBUSY;
 else {
  vcpu->run->psw_mask = psw.mask;
  vcpu->run->psw_addr = psw.addr;
 }
 return rc;
}
