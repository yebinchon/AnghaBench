
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ pc; } ;
struct exception_info {char* member_0; int member_2; int member_1; } ;


 unsigned int BKPT_OPCODE ;
 int EXCEPT_TYPE_IXF ;
 int SIGTRAP ;
 int TRAP_BRKPT ;
 unsigned int __ffs (unsigned int) ;
 int ack_exception (int ) ;
 int do_trap (struct exception_info*,struct pt_regs*) ;
 unsigned int get_iexcept () ;
 struct exception_info* iexcept_table ;
 int pr_err (char*,scalar_t__) ;
 int set_iexcept (unsigned int) ;

__attribute__((used)) static int process_iexcept(struct pt_regs *regs)
{
 unsigned int iexcept_report = get_iexcept();
 unsigned int iexcept_num;

 ack_exception(EXCEPT_TYPE_IXF);

 pr_err("IEXCEPT: PC[0x%lx]\n", regs->pc);

 while (iexcept_report) {
  iexcept_num = __ffs(iexcept_report);
  iexcept_report &= ~(1 << iexcept_num);
  set_iexcept(iexcept_report);
  if (*(unsigned int *)regs->pc == BKPT_OPCODE) {

   struct exception_info bkpt_exception = {
    "Oops - undefined instruction",
      SIGTRAP, TRAP_BRKPT
   };
   do_trap(&bkpt_exception, regs);
   iexcept_report &= ~(0xFF);
   set_iexcept(iexcept_report);
   continue;
  }

  do_trap(&iexcept_table[iexcept_num], regs);
 }
 return 0;
}
