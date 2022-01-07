
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pt_regs {scalar_t__ nip; } ;


 scalar_t__ BREAK_INSTR ;
 scalar_t__ BREAK_INSTR_SIZE ;
 int SIGTRAP ;
 scalar_t__ kgdb_handle_exception (int,int ,int ,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int kgdb_handle_breakpoint(struct pt_regs *regs)
{
 if (user_mode(regs))
  return 0;

 if (kgdb_handle_exception(1, SIGTRAP, 0, regs) != 0)
  return 0;

 if (*(u32 *)regs->nip == BREAK_INSTR)
  regs->nip += BREAK_INSTR_SIZE;

 return 1;
}
