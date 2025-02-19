
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serror_pending; int serror_has_esr; int serror_esr; } ;
struct kvm_vcpu_events {TYPE_1__ exception; } ;
struct kvm_vcpu {int dummy; } ;


 int ARM64_HAS_RAS_EXTN ;
 int EINVAL ;
 int ESR_ELx_ISS_MASK ;
 int cpus_have_const_cap (int ) ;
 int kvm_inject_vabt (struct kvm_vcpu*) ;
 int kvm_set_sei_esr (struct kvm_vcpu*,int) ;

int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
         struct kvm_vcpu_events *events)
{
 bool serror_pending = events->exception.serror_pending;
 bool has_esr = events->exception.serror_has_esr;

 if (serror_pending && has_esr) {
  if (!cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
   return -EINVAL;

  if (!((events->exception.serror_esr) & ~ESR_ELx_ISS_MASK))
   kvm_set_sei_esr(vcpu, events->exception.serror_esr);
  else
   return -EINVAL;
 } else if (serror_pending) {
  kvm_inject_vabt(vcpu);
 }

 return 0;
}
