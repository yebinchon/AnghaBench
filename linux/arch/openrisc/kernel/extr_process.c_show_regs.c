
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int KERN_DEFAULT ;
 int show_regs_print_info (int ) ;

void show_regs(struct pt_regs *regs)
{
 extern void show_registers(struct pt_regs *regs);

 show_regs_print_info(KERN_DEFAULT);

 show_registers(regs);
}
