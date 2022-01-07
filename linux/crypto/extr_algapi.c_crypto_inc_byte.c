
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static inline void crypto_inc_byte(u8 *a, unsigned int size)
{
 u8 *b = (a + size);
 u8 c;

 for (; size; size--) {
  c = *--b + 1;
  *b = c;
  if (c)
   break;
 }
}
