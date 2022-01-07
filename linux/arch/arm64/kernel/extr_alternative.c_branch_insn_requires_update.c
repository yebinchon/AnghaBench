
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alt_instr {unsigned long alt_len; } ;


 scalar_t__ ALT_REPL_PTR (struct alt_instr*) ;
 int BUG () ;
 scalar_t__ kernel_text_address (unsigned long) ;

__attribute__((used)) static bool branch_insn_requires_update(struct alt_instr *alt, unsigned long pc)
{
 unsigned long replptr;

 if (kernel_text_address(pc))
  return 1;

 replptr = (unsigned long)ALT_REPL_PTR(alt);
 if (pc >= replptr && pc <= (replptr + alt->alt_len))
  return 0;





 BUG();
}
