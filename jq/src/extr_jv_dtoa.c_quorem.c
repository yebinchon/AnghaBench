
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
typedef int ULong ;
typedef int ULLong ;
struct TYPE_6__ {int wds; int* x; } ;
typedef TYPE_1__ Bigint ;


 int Bug (char*) ;
 int FFFFFFFF ;
 int Storeinc (int*,int,int) ;
 scalar_t__ cmp (struct dtoa_context*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
quorem
 (struct dtoa_context* C, Bigint *b, Bigint *S)
{
 int n;
 ULong *bx, *bxe, q, *sx, *sxe;



 ULong borrow, carry, y, ys;





 n = S->wds;




 if (b->wds < n)
  return 0;
 sx = S->x;
 sxe = sx + --n;
 bx = b->x;
 bxe = bx + n;
 q = *bxe / (*sxe + 1);
 if (q) {
  borrow = 0;
  carry = 0;
  do {
   ys = *sx++ * q + carry;
   carry = ys >> 16;
   y = *bx - (ys & 0xffff) - borrow;
   borrow = (y & 0x10000) >> 16;
   *bx++ = y & 0xffff;


   }
   while(sx <= sxe);
  if (!*bxe) {
   bx = b->x;
   while(--bxe > bx && !*bxe)
    --n;
   b->wds = n;
   }
  }
 if (cmp(C, b, S) >= 0) {
  q++;
  borrow = 0;
  carry = 0;
  bx = b->x;
  sx = S->x;
  do {
   ys = *sx++ + carry;
   carry = ys >> 16;
   y = *bx - (ys & 0xffff) - borrow;
   borrow = (y & 0x10000) >> 16;
   *bx++ = y & 0xffff;


   }
   while(sx <= sxe);
  bx = b->x;
  bxe = bx + n;
  if (!*bxe) {
   while(--bxe > bx && !*bxe)
    --n;
   b->wds = n;
   }
  }
 return q;
 }
