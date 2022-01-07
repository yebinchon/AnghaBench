
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_delay () ;
 int outb (int,int) ;

__attribute__((used)) static void mask_all_interrupts(void)
{
 outb(0xff, 0xa1);
 io_delay();
 outb(0xfb, 0x21);
 io_delay();
}
