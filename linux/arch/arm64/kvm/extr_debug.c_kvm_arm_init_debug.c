
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __kvm_get_mdcr_el2 ;
 int __this_cpu_write (int ,int ) ;
 int kvm_call_hyp_ret (int ) ;
 int mdcr_el2 ;

void kvm_arm_init_debug(void)
{
 __this_cpu_write(mdcr_el2, kvm_call_hyp_ret(__kvm_get_mdcr_el2));
}
