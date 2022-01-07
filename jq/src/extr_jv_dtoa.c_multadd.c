
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
typedef int ULong ;
typedef int ULLong ;
struct TYPE_8__ {int wds; int* x; int maxwds; scalar_t__ k; } ;
typedef TYPE_1__ Bigint ;


 TYPE_1__* Balloc (struct dtoa_context*,scalar_t__) ;
 int Bcopy (TYPE_1__*,TYPE_1__*) ;
 int Bfree (struct dtoa_context*,TYPE_1__*) ;
 int FFFFFFFF ;

__attribute__((used)) static Bigint *
multadd
 (struct dtoa_context* C, Bigint *b, int m, int a)
{
 int i, wds;




 ULong carry, *x, y;




 Bigint *b1;

 wds = b->wds;
 x = b->x;
 i = 0;
 carry = a;
 do {
  y = *x * m + carry;
  carry = y >> 16;
  *x++ = y & 0xffff;


  }
  while(++i < wds);
 if (carry) {
  if (wds >= b->maxwds) {
   b1 = Balloc(C, b->k+1);
   Bcopy(b1, b);
   Bfree(C, b);
   b = b1;
   }
  b->x[wds++] = carry;
  b->wds = wds;
  }
 return b;
 }
