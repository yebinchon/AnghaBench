
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ug_getc () ;
 int ug_is_rxfifo_ready () ;

__attribute__((used)) static int ug_udbg_getc_poll(void)
{
 if (!ug_is_rxfifo_ready())
  return -1;
 return ug_getc();
}
