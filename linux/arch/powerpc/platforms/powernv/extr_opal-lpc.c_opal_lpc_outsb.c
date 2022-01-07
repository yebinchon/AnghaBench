
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int opal_lpc_outb (int ,unsigned long) ;

__attribute__((used)) static void opal_lpc_outsb(unsigned long p, const void *b, unsigned long c)
{
 const u8 *ptr = b;

 while(c--)
  opal_lpc_outb(*(ptr++), p);
}
