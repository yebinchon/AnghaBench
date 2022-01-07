
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int opal_lpc_inb (unsigned long) ;

__attribute__((used)) static void opal_lpc_insb(unsigned long p, void *b, unsigned long c)
{
 u8 *ptr = b;

 while(c--)
  *(ptr++) = opal_lpc_inb(p);
}
