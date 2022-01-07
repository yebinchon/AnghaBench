
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
typedef int ULong ;
typedef int ULLong ;
struct TYPE_8__ {int wds; int* x; int sign; int k; } ;
typedef TYPE_1__ Bigint ;


 TYPE_1__* Balloc (struct dtoa_context*,int ) ;
 int FFFFFFFF ;
 int Storeinc (int*,int,int) ;
 int cmp (struct dtoa_context*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static Bigint *
diff
 (struct dtoa_context* C, Bigint *a, Bigint *b)
{
 Bigint *c;
 int i, wa, wb;
 ULong *xa, *xae, *xb, *xbe, *xc;



 ULong borrow, y;





 i = cmp(C, a,b);
 if (!i) {
  c = Balloc(C, 0);
  c->wds = 1;
  c->x[0] = 0;
  return c;
  }
 if (i < 0) {
  c = a;
  a = b;
  b = c;
  i = 1;
  }
 else
  i = 0;
 c = Balloc(C, a->k);
 c->sign = i;
 wa = a->wds;
 xa = a->x;
 xae = xa + wa;
 wb = b->wds;
 xb = b->x;
 xbe = xb + wb;
 xc = c->x;
 borrow = 0;
 do {
  y = *xa++ - *xb++ - borrow;
  borrow = (y & 0x10000) >> 16;
  *xc++ = y & 0xffff;
  }
  while(xb < xbe);
 while(xa < xae) {
  y = *xa++ - borrow;
  borrow = (y & 0x10000) >> 16;
  *xc++ = y & 0xffff;
  }


 while(!*--xc)
  wa--;
 c->wds = wa;
 return c;
 }
