
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled_hcalls; } ;
struct kvm {TYPE_1__ arch; } ;


 int WARN_ON (int) ;
 int __set_bit (unsigned int,int ) ;
 int* default_hcall_list ;
 int kvmppc_hcall_impl_pr (unsigned int) ;

void kvmppc_pr_init_default_hcalls(struct kvm *kvm)
{
 int i;
 unsigned int hcall;

 for (i = 0; default_hcall_list[i]; ++i) {
  hcall = default_hcall_list[i];
  WARN_ON(!kvmppc_hcall_impl_pr(hcall));
  __set_bit(hcall / 4, kvm->arch.enabled_hcalls);
 }
}
