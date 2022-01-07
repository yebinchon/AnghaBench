
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * kvm_mips_callbacks ;

void kvm_arch_exit(void)
{
 kvm_mips_callbacks = ((void*)0);
}
