
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int cpu; } ;


 int smp_send_reschedule (int ) ;

void __kvm_request_immediate_exit(struct kvm_vcpu *vcpu)
{
 smp_send_reschedule(vcpu->cpu);
}
