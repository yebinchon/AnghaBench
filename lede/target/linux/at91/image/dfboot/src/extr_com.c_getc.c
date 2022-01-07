
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int at91_serial_getc () ;

int getc()
{
  return at91_serial_getc();
}
