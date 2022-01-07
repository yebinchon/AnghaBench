
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_user_windows () ;
 int prom_cmdline () ;
 int prom_printf (char*) ;
 int stop_a_enabled ;

void sun_do_break(void)
{
 if (!stop_a_enabled)
  return;

 prom_printf("\n");
 flush_user_windows();

 prom_cmdline();
}
