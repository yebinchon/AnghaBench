
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cs; int flags; } ;


 int X86_EFLAGS_IF ;
 int do_machine_check (struct pt_regs*,int ) ;

__attribute__((used)) static void kvm_machine_check(void)
{
}
