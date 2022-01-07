
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int elf_gregset_t ;


 int do_copy_regs ;
 int unw_init_running (int ,int ) ;

void
ia64_elf_core_copy_regs (struct pt_regs *pt, elf_gregset_t dst)
{
 unw_init_running(do_copy_regs, dst);
}
