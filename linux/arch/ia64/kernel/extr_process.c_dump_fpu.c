
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;


 int do_dump_fpu ;
 int unw_init_running (int ,int ) ;

int
dump_fpu (struct pt_regs *pt, elf_fpregset_t dst)
{
 unw_init_running(do_dump_fpu, dst);
 return 1;
}
