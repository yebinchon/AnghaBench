
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int ocd_putc (int) ;

__attribute__((used)) static void early_ocd_write(struct console *con, const char *s, unsigned n)
{
 while (*s && n-- > 0) {
  if (*s == '\n')
   ocd_putc((int)'\r');
  ocd_putc((int)*s);
  s++;
 }
}
