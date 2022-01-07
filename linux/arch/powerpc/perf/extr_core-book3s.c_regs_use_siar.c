
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ result; } ;


 int TRAP (struct pt_regs*) ;

__attribute__((used)) static bool regs_use_siar(struct pt_regs *regs)
{
 return ((TRAP(regs) == 0xf00) && regs->result);
}
