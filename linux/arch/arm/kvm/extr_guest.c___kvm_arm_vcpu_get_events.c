
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serror_pending; } ;
struct kvm_vcpu_events {TYPE_1__ exception; } ;
struct kvm_vcpu {int dummy; } ;


 int HCR_VA ;
 int* vcpu_hcr (struct kvm_vcpu*) ;

int __kvm_arm_vcpu_get_events(struct kvm_vcpu *vcpu,
         struct kvm_vcpu_events *events)
{
 events->exception.serror_pending = !!(*vcpu_hcr(vcpu) & HCR_VA);

 return 0;
}
