
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 struct pt_regs* get_irq_regs () ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static bool interrupted_user_mode(void)
{
 struct pt_regs *regs = get_irq_regs();
 return regs && user_mode(regs);
}
