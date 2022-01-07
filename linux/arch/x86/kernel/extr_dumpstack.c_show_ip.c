
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ ip; scalar_t__ cs; } ;


 int printk (char*,char const*,int,...) ;
 int show_opcodes (struct pt_regs*,char const*) ;

void show_ip(struct pt_regs *regs, const char *loglvl)
{



 printk("%sRIP: %04x:%pS\n", loglvl, (int)regs->cs, (void *)regs->ip);

 show_opcodes(regs, loglvl);
}
