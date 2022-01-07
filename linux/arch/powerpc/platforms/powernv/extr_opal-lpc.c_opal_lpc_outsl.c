
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int __opal_lpc_outl (int ,unsigned long) ;

__attribute__((used)) static void opal_lpc_outsl(unsigned long p, const void *b, unsigned long c)
{
 const __le32 *ptr = b;

 while(c--)
  __opal_lpc_outl(*(ptr++), p);
}
