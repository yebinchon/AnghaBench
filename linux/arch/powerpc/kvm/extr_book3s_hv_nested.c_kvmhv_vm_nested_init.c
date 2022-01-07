
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_nested_lpid; } ;
struct kvm {TYPE_1__ arch; } ;



void kvmhv_vm_nested_init(struct kvm *kvm)
{
 kvm->arch.max_nested_lpid = -1;
}
