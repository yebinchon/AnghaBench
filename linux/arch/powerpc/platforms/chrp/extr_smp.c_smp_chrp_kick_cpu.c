
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KERNELBASE ;

__attribute__((used)) static int smp_chrp_kick_cpu(int nr)
{
 *(unsigned long *)KERNELBASE = nr;
 asm volatile("dcbf 0,%0"::"r"(KERNELBASE):"memory");

 return 0;
}
