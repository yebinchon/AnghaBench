
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int TRAP (struct pt_regs*) ;
 int computeSignal (int ) ;
 scalar_t__ kgdb_handle_exception (int ,int ,int ,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int kgdb_break_match(struct pt_regs *regs)
{
 if (user_mode(regs))
  return 0;

 if (kgdb_handle_exception(0, computeSignal(TRAP(regs)), 0, regs) != 0)
  return 0;
 return 1;
}
