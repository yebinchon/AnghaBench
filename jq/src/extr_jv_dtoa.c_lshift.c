
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
typedef int ULong ;
struct TYPE_6__ {int k; int wds; int maxwds; int* x; } ;
typedef TYPE_1__ Bigint ;


 TYPE_1__* Balloc (struct dtoa_context*,int) ;
 int Bfree (struct dtoa_context*,TYPE_1__*) ;

__attribute__((used)) static Bigint *
lshift
 (struct dtoa_context* C, Bigint *b, int k)
{
 int i, k1, n, n1;
 Bigint *b1;
 ULong *x, *x1, *xe, z;




 n = k >> 4;

 k1 = b->k;
 n1 = n + b->wds + 1;
 for(i = b->maxwds; n1 > i; i <<= 1)
  k1++;
 b1 = Balloc(C, k1);
 x1 = b1->x;
 for(i = 0; i < n; i++)
  *x1++ = 0;
 x = b->x;
 xe = x + b->wds;
 if (k &= 0xf) {
  k1 = 16 - k;
  z = 0;
  do {
   *x1++ = *x << k & 0xffff | z;
   z = *x++ >> k1;
   }
   while(x < xe);
  if (*x1 = z)
   ++n1;
  }

 else do
  *x1++ = *x++;
  while(x < xe);
 b1->wds = n1 - 1;
 Bfree(C, b);
 return b1;
 }
