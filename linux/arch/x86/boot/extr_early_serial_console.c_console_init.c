
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int early_serial_base ;
 int parse_console_uart8250 () ;
 int parse_earlyprintk () ;

void console_init(void)
{
 parse_earlyprintk();

 if (!early_serial_base)
  parse_console_uart8250();
}
