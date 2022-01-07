
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int console_verbose () ;
 int do_exit (int ) ;
 int local_irq_disable () ;
 int printk (char*,...) ;
 int show_registers (struct pt_regs*) ;

void die(const char *str, struct pt_regs *regs, long err)
{

 console_verbose();
 printk("\n%s#: %04lx\n", str, err & 0xffff);
 show_registers(regs);
 do_exit(SIGSEGV);
}
