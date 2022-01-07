
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;


 int compiled_break ;
 int kgdb_arch_set_pc (struct pt_regs*,int) ;
 scalar_t__ kgdb_hex2long (char**,unsigned long*) ;

__attribute__((used)) static void kgdb_arch_update_addr(struct pt_regs *regs,
    char *remcom_in_buffer)
{
 unsigned long addr;
 char *ptr;

 ptr = &remcom_in_buffer[1];
 if (kgdb_hex2long(&ptr, &addr))
  kgdb_arch_set_pc(regs, addr);
 else if (compiled_break == 1)
  kgdb_arch_set_pc(regs, regs->pc + 4);

 compiled_break = 0;
}
