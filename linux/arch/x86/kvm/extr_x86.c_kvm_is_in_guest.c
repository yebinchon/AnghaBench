
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * __this_cpu_read (int ) ;
 int current_vcpu ;

int kvm_is_in_guest(void)
{
 return __this_cpu_read(current_vcpu) != ((void*)0);
}
