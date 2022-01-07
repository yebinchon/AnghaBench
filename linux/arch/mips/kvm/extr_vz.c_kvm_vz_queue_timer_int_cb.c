
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int MIPS_EXC_INT_TIMER ;
 int kvm_vz_queue_irq (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvm_vz_queue_timer_int_cb(struct kvm_vcpu *vcpu)
{




 kvm_vz_queue_irq(vcpu, MIPS_EXC_INT_TIMER);
}
