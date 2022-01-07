
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __this_cpu_write (int ,int *) ;
 int current_vcpu ;

__attribute__((used)) static inline void kvm_after_interrupt(struct kvm_vcpu *vcpu)
{
 __this_cpu_write(current_vcpu, ((void*)0));
}
