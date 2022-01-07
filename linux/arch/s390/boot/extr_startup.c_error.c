
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disabled_wait () ;
 int sclp_early_printk (char*) ;

void error(char *x)
{
 sclp_early_printk("\n\n");
 sclp_early_printk(x);
 sclp_early_printk("\n\n -- System halted");

 disabled_wait();
}
