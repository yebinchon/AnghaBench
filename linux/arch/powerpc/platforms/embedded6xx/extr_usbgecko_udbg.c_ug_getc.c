
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UG_READ_ATTEMPTS ;
 int barrier () ;
 int ug_io_base ;
 int ug_is_rxfifo_ready () ;
 int ug_raw_getc () ;

__attribute__((used)) static int ug_getc(void)
{
 int count = UG_READ_ATTEMPTS;

 if (!ug_io_base)
  return -1;

 while (!ug_is_rxfifo_ready() && count--)
  barrier();
 return ug_raw_getc();
}
