
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * gr; int iir; } ;


 int PARISC_KGDB_COMPILED_BREAK_INSN ;
 int PSW_R ;
 int kgdb_arch_set_pc (struct pt_regs*,unsigned long) ;
 int * kgdb_contthread ;
 int kgdb_hex2long (char**,unsigned long*) ;
 int kgdb_single_step ;
 int mtctl (int,int ) ;
 int step_instruction_queue (struct pt_regs*) ;

int kgdb_arch_handle_exception(int trap, int signo,
  int err_code, char *inbuf, char *outbuf,
  struct pt_regs *regs)
{
 unsigned long addr;
 char *p = inbuf + 1;

 switch (inbuf[0]) {
 case 'D':
 case 'c':
 case 'k':
  kgdb_contthread = ((void*)0);
  kgdb_single_step = 0;

  if (kgdb_hex2long(&p, &addr))
   kgdb_arch_set_pc(regs, addr);
  else if (trap == 9 && regs->iir ==
    PARISC_KGDB_COMPILED_BREAK_INSN)
   step_instruction_queue(regs);
  return 0;
 case 's':
  kgdb_single_step = 1;
  if (kgdb_hex2long(&p, &addr)) {
   kgdb_arch_set_pc(regs, addr);
  } else if (trap == 9 && regs->iir ==
    PARISC_KGDB_COMPILED_BREAK_INSN) {
   step_instruction_queue(regs);
   mtctl(-1, 0);
  } else {
   mtctl(0, 0);
  }
  regs->gr[0] |= PSW_R;
  return 0;

 }
 return -1;
}
