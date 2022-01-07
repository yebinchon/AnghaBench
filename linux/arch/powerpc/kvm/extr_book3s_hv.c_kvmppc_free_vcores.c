
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ online_vcores; int * vcores; } ;
struct kvm {TYPE_1__ arch; } ;


 long KVM_MAX_VCORES ;
 int kfree (int ) ;

__attribute__((used)) static void kvmppc_free_vcores(struct kvm *kvm)
{
 long int i;

 for (i = 0; i < KVM_MAX_VCORES; ++i)
  kfree(kvm->arch.vcores[i]);
 kvm->arch.online_vcores = 0;
}
