
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;


 int EXCEPT_TYPE_EXC ;
 int ack_exception (int ) ;
 int do_trap (int *,struct pt_regs*) ;
 int * eexcept_table ;
 int pr_err (char*,int ) ;
 int soc_get_exception () ;

__attribute__((used)) static void process_eexcept(struct pt_regs *regs)
{
 int evt;

 pr_err("EEXCEPT: PC[0x%lx]\n", regs->pc);

 while ((evt = soc_get_exception()) >= 0)
  do_trap(&eexcept_table[evt], regs);

 ack_exception(EXCEPT_TYPE_EXC);
}
