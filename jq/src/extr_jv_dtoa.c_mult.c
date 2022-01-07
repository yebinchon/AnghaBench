
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
typedef int ULong ;
typedef int ULLong ;
struct TYPE_6__ {int wds; int k; int maxwds; int* x; } ;
typedef TYPE_1__ Bigint ;


 TYPE_1__* Balloc (struct dtoa_context*,int) ;
 int FFFFFFFF ;
 int Storeinc (int*,int,int) ;

__attribute__((used)) static Bigint *
mult
 (struct dtoa_context* C, Bigint *a, Bigint *b)
{
 Bigint *c;
 int k, wa, wb, wc;
 ULong *x, *xa, *xae, *xb, *xbe, *xc, *xc0;
 ULong y;



 ULong carry, z;





 if (a->wds < b->wds) {
  c = a;
  a = b;
  b = c;
  }
 k = a->k;
 wa = a->wds;
 wb = b->wds;
 wc = wa + wb;
 if (wc > a->maxwds)
  k++;
 c = Balloc(C, k);
 for(x = c->x, xa = x + wc; x < xa; x++)
  *x = 0;
 xa = a->x;
 xae = xa + wa;
 xb = b->x;
 xbe = xb + wb;
 xc0 = c->x;
 for(; xb < xbe; xc0++) {
  if (y = *xb++) {
   x = xa;
   xc = xc0;
   carry = 0;
   do {
    z = *x++ * y + *xc + carry;
    carry = z >> 16;
    *xc++ = z & 0xffff;
    }
    while(x < xae);
   *xc = carry;
   }
  }


 for(xc0 = c->x, xc = xc0 + wc; wc > 0 && !*--xc; --wc) ;
 c->wds = wc;
 return c;
 }
