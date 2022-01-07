
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int assigned_device_count; } ;
struct kvm {TYPE_1__ arch; } ;


 int atomic_dec (int *) ;

void kvm_arch_end_assignment(struct kvm *kvm)
{
 atomic_dec(&kvm->arch.assigned_device_count);
}
