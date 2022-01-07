
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_HC_MIPS_CONSOLE_OUTPUT ;
 int kvm_hypercall3 (int ,int ,unsigned long,int) ;

void prom_putchar(char c)
{
 kvm_hypercall3(KVM_HC_MIPS_CONSOLE_OUTPUT, 0 ,
  (unsigned long)&c, 1 );
}
