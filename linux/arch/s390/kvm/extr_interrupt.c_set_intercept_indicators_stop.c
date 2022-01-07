
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int CPUSTAT_STOP_INT ;
 scalar_t__ kvm_s390_is_stop_irq_pending (struct kvm_vcpu*) ;
 int kvm_s390_set_cpuflags (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void set_intercept_indicators_stop(struct kvm_vcpu *vcpu)
{
 if (kvm_s390_is_stop_irq_pending(vcpu))
  kvm_s390_set_cpuflags(vcpu, CPUSTAT_STOP_INT);
}
