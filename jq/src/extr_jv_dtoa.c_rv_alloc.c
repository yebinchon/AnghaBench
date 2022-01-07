
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;
typedef int ULong ;
typedef int Bigint ;


 scalar_t__ Balloc (struct dtoa_context*,int) ;

__attribute__((used)) static char *
rv_alloc(struct dtoa_context* C, int i)
{
 int j, k, *r;

 j = sizeof(ULong);
 for(k = 0;
            (int)(sizeof(Bigint) - sizeof(ULong) - sizeof(int)) + j <= i;
  j <<= 1)
   k++;
 r = (int*)Balloc(C, k);
 *r = k;
 return
  (char *)(r+1);
 }
