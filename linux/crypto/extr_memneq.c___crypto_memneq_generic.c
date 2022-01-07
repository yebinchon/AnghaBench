
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPTIMIZER_HIDE_VAR (unsigned long) ;

__attribute__((used)) static inline unsigned long
__crypto_memneq_generic(const void *a, const void *b, size_t size)
{
 unsigned long neq = 0;
 while (size > 0) {
  neq |= *(unsigned char *)a ^ *(unsigned char *)b;
  OPTIMIZER_HIDE_VAR(neq);
  a += 1;
  b += 1;
  size -= 1;
 }
 return neq;
}
