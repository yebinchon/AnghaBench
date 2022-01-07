
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lpid; } ;
struct kvm {TYPE_1__ arch; } ;


 int kvmppc_free_lpid (int) ;
 int threads_per_core ;

__attribute__((used)) static void kvmppc_core_destroy_vm_e500mc(struct kvm *kvm)
{
 int lpid = kvm->arch.lpid;

 if (threads_per_core == 2)
  lpid >>= 1;

 kvmppc_free_lpid(lpid);
}
