
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int at91_serial_putc (char const) ;

int puts(const char *str)
{
  while(*str != 0) {
  at91_serial_putc(*str);
  str++;
  }
 return 1;
}
