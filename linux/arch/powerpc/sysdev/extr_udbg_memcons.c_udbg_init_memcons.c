
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcons_getc ;
 int memcons_getc_poll ;
 int memcons_putc ;
 int udbg_getc ;
 int udbg_getc_poll ;
 int udbg_putc ;

void udbg_init_memcons(void)
{
 udbg_putc = memcons_putc;
 udbg_getc = memcons_getc;
 udbg_getc_poll = memcons_getc_poll;
}
