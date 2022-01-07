
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hardware_enable ) () ;} ;


 TYPE_1__* kvm_mips_callbacks ;
 int stub1 () ;

int kvm_arch_hardware_enable(void)
{
 return kvm_mips_callbacks->hardware_enable();
}
