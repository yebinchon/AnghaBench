
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int lctl; int ictl; } ;


 int ICTL_LPSW ;
 int IRQ_PEND_MCHK_MASK ;
 int LCTL_CR14 ;
 int pending_irqs_no_gisa (struct kvm_vcpu*) ;
 scalar_t__ psw_mchk_disabled (struct kvm_vcpu*) ;

__attribute__((used)) static void set_intercept_indicators_mchk(struct kvm_vcpu *vcpu)
{
 if (!(pending_irqs_no_gisa(vcpu) & IRQ_PEND_MCHK_MASK))
  return;
 if (psw_mchk_disabled(vcpu))
  vcpu->arch.sie_block->ictl |= ICTL_LPSW;
 else
  vcpu->arch.sie_block->lctl |= LCTL_CR14;
}
