
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serror_pending; int serror_has_esr; } ;
struct kvm_vcpu_events {TYPE_1__ exception; } ;
struct kvm_vcpu {int dummy; } ;


 int EINVAL ;
 int kvm_inject_vabt (struct kvm_vcpu*) ;

int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
         struct kvm_vcpu_events *events)
{
 bool serror_pending = events->exception.serror_pending;
 bool has_esr = events->exception.serror_has_esr;

 if (serror_pending && has_esr)
  return -EINVAL;
 else if (serror_pending)
  kvm_inject_vabt(vcpu);

 return 0;
}
