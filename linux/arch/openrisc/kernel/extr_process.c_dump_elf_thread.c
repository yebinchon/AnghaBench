
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ sr; scalar_t__ pc; scalar_t__ gpr; } ;
typedef scalar_t__ elf_greg_t ;


 int memcpy (scalar_t__*,scalar_t__,int) ;

void dump_elf_thread(elf_greg_t *dest, struct pt_regs* regs)
{
 dest[0] = 0;
 memcpy(dest+1, regs->gpr+1, 31*sizeof(unsigned long));
 dest[32] = regs->pc;
 dest[33] = regs->sr;
 dest[34] = 0;
 dest[35] = 0;
}
