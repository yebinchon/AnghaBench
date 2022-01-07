
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int lctl; } ;


 int CPUSTAT_EXT_INT ;
 int IRQ_PEND_EXT_MASK ;
 int LCTL_CR0 ;
 int kvm_s390_set_cpuflags (struct kvm_vcpu*,int ) ;
 int pending_irqs_no_gisa (struct kvm_vcpu*) ;
 scalar_t__ psw_extint_disabled (struct kvm_vcpu*) ;

__attribute__((used)) static void set_intercept_indicators_ext(struct kvm_vcpu *vcpu)
{
 if (!(pending_irqs_no_gisa(vcpu) & IRQ_PEND_EXT_MASK))
  return;
 if (psw_extint_disabled(vcpu))
  kvm_s390_set_cpuflags(vcpu, CPUSTAT_EXT_INT);
 else
  vcpu->arch.sie_block->lctl |= LCTL_CR0;
}
