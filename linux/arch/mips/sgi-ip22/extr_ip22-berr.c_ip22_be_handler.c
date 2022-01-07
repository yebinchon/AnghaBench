
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int MIPS_BE_FATAL ;
 int MIPS_BE_FIXUP ;
 int print_buserr () ;
 int save_and_clear_buserr () ;

__attribute__((used)) static int ip22_be_handler(struct pt_regs *regs, int is_fixup)
{
 save_and_clear_buserr();
 if (is_fixup)
  return MIPS_BE_FIXUP;
 print_buserr();
 return MIPS_BE_FATAL;
}
