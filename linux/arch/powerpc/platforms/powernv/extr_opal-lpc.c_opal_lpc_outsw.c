
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int __opal_lpc_outw (int ,unsigned long) ;

__attribute__((used)) static void opal_lpc_outsw(unsigned long p, const void *b, unsigned long c)
{
 const __le16 *ptr = b;

 while(c--)
  __opal_lpc_outw(*(ptr++), p);
}
