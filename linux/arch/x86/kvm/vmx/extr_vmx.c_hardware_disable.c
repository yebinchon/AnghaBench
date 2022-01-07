
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_cpu_vmxoff () ;
 int vmclear_local_loaded_vmcss () ;

__attribute__((used)) static void hardware_disable(void)
{
 vmclear_local_loaded_vmcss();
 kvm_cpu_vmxoff();
}
