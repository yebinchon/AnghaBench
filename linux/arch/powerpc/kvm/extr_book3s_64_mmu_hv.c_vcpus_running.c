
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vcpus_running; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int vcpus_running(struct kvm *kvm)
{
 return atomic_read(&kvm->arch.vcpus_running) != 0;
}
