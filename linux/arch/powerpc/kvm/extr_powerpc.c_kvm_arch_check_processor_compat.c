
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvmppc_core_check_processor_compat () ;

int kvm_arch_check_processor_compat(void)
{
 return kvmppc_core_check_processor_compat();
}
