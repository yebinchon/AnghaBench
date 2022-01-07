
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int __opal_lpc_inw (unsigned long) ;

__attribute__((used)) static void opal_lpc_insw(unsigned long p, void *b, unsigned long c)
{
 __le16 *ptr = b;

 while(c--)
  *(ptr++) = __opal_lpc_inw(p);
}
