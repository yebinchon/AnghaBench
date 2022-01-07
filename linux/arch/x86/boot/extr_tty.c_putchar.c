
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bios_putchar (int) ;
 scalar_t__ early_serial_base ;
 int serial_putchar (int) ;

void __attribute__((section(".inittext"))) putchar(int ch)
{
 if (ch == '\n')
  putchar('\r');

 bios_putchar(ch);

 if (early_serial_base != 0)
  serial_putchar(ch);
}
