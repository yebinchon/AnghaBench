
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int external_oneshot; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;





__attribute__((used)) static bool clear_irqprio(struct kvm_vcpu *vcpu, unsigned int priority)
{
 switch (priority) {
  case 129:

   return 0;
  case 128:





   if (vcpu->arch.external_oneshot) {
    vcpu->arch.external_oneshot = 0;
    return 1;
   }
   return 0;
 }

 return 1;
}
