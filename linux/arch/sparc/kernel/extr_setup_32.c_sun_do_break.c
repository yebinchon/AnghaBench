
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_user_windows () ;
 int printk (char*) ;
 int prom_cmdline () ;
 int stop_a_enabled ;

void sun_do_break(void)
{
 if (!stop_a_enabled)
  return;

 printk("\n");
 flush_user_windows();

 prom_cmdline();
}
