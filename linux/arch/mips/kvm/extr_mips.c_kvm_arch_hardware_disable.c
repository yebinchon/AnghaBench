
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hardware_disable ) () ;} ;


 TYPE_1__* kvm_mips_callbacks ;
 int stub1 () ;

void kvm_arch_hardware_disable(void)
{
 kvm_mips_callbacks->hardware_disable();
}
