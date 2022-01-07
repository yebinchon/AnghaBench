
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int PROM_FLAG_USE_AS_CONSOLE ;
 int prom_flags ;

__attribute__((used)) static int prom_console_setup(struct console *co, char *options)
{
 return !(prom_flags & PROM_FLAG_USE_AS_CONSOLE);
}
