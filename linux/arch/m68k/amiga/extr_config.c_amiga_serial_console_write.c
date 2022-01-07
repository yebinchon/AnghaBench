
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int amiga_serial_putc (char) ;

__attribute__((used)) static void amiga_serial_console_write(struct console *co, const char *s,
           unsigned int count)
{
 while (count--) {
  if (*s == '\n')
   amiga_serial_putc('\r');
  amiga_serial_putc(*s++);
 }
}
