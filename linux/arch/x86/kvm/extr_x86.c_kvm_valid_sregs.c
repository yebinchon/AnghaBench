
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ l; } ;
struct kvm_sregs {int efer; int cr0; int cr4; TYPE_1__ cs; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int EINVAL ;
 int X86_CR0_PG ;
 int X86_CR4_PAE ;
 int kvm_valid_cr4 (struct kvm_vcpu*,int) ;

__attribute__((used)) static int kvm_valid_sregs(struct kvm_vcpu *vcpu, struct kvm_sregs *sregs)
{
 if ((sregs->efer & EFER_LME) && (sregs->cr0 & X86_CR0_PG)) {





  if (!(sregs->cr4 & X86_CR4_PAE)
      || !(sregs->efer & EFER_LMA))
   return -EINVAL;
 } else {




  if (sregs->efer & EFER_LMA || sregs->cs.l)
   return -EINVAL;
 }

 return kvm_valid_cr4(vcpu, sregs->cr4);
}
