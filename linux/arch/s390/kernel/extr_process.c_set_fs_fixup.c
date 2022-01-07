
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int int_code; } ;


 int USER_DS ;
 int WARN (int,char*,int ) ;
 struct pt_regs* current_pt_regs () ;
 int set_fs (int ) ;
 int show_registers (struct pt_regs*) ;

void set_fs_fixup(void)
{
 struct pt_regs *regs = current_pt_regs();
 static bool warned;

 set_fs(USER_DS);
 if (warned)
  return;
 WARN(1, "Unbalanced set_fs - int code: 0x%x\n", regs->int_code);
 show_registers(regs);
 warned = 1;
}
