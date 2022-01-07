
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
typedef scalar_t__ ULong ;
struct TYPE_4__ {int wds; scalar_t__* x; } ;
typedef TYPE_1__ Bigint ;


 int Bug (char*) ;

__attribute__((used)) static int
cmp
 (struct dtoa_context* C, Bigint *a, Bigint *b)
{
 ULong *xa, *xa0, *xb, *xb0;
 int i, j;

 i = a->wds;
 j = b->wds;






 if (i -= j)
  return i;
 xa0 = a->x;
 xa = xa0 + j;
 xb0 = b->x;
 xb = xb0 + j;
 for(;;) {
  if (*--xa != *--xb)
   return *xa < *xb ? -1 : 1;
  if (xa <= xa0)
   break;
  }
 return 0;
 }
