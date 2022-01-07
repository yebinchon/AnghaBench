
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int prom_putchar (char const) ;

__attribute__((used)) static void early_console_write(struct console *con, const char *s, unsigned n)
{
 while (n-- && *s) {
  if (*s == '\n')
   prom_putchar('\r');
  prom_putchar(*s);
  s++;
 }
}
