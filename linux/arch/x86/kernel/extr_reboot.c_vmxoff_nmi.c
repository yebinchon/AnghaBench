
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int cpu_emergency_vmxoff () ;

__attribute__((used)) static void vmxoff_nmi(int cpu, struct pt_regs *regs)
{
 cpu_emergency_vmxoff();
}
