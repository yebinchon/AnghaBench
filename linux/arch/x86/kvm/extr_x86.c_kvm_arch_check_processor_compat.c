
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* check_processor_compatibility ) () ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 () ;

int kvm_arch_check_processor_compat(void)
{
 return kvm_x86_ops->check_processor_compatibility();
}
