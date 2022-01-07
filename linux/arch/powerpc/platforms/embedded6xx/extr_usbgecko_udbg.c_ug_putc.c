
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UG_WRITE_ATTEMPTS ;
 int barrier () ;
 int ug_io_base ;
 int ug_is_txfifo_ready () ;
 int ug_raw_putc (char) ;

__attribute__((used)) static void ug_putc(char ch)
{
 int count = UG_WRITE_ATTEMPTS;

 if (!ug_io_base)
  return;

 if (ch == '\n')
  ug_putc('\r');

 while (!ug_is_txfifo_ready() && count--)
  barrier();
 if (count >= 0)
  ug_raw_putc(ch);
}
