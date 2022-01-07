
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int early_serial_putc (char const) ;

__attribute__((used)) static void early_serial_write(struct console *con, const char *s, unsigned n)
{
 while (*s && n-- > 0) {
  if (*s == '\n')
   early_serial_putc('\r');
  early_serial_putc(*s);
  s++;
 }
}
