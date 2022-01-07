
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_window32 {unsigned long* locals; } ;
struct pt_regs {unsigned long* u_regs; } ;


 size_t UREG_FP ;

__attribute__((used)) static inline unsigned long fetch_reg(unsigned int reg, struct pt_regs *regs)
{
 struct reg_window32 *win;

 if(reg < 16)
  return (!reg ? 0 : regs->u_regs[reg]);


 win = (struct reg_window32 *) regs->u_regs[UREG_FP];
 return win->locals[reg - 16];
}
