
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static void enable_a20_fast(void)
{
 u8 port_a;

 port_a = inb(0x92);
 port_a |= 0x02;
 port_a &= ~0x01;
 outb(port_a, 0x92);
}
