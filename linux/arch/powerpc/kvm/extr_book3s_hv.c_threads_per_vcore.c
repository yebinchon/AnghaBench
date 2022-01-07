
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ threads_indep; } ;
struct kvm {TYPE_1__ arch; } ;


 int threads_per_subcore ;

__attribute__((used)) static int threads_per_vcore(struct kvm *kvm)
{
 if (kvm->arch.threads_indep)
  return 1;
 return threads_per_subcore;
}
