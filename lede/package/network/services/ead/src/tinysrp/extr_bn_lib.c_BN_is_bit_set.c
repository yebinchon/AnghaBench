
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int* d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;

int BN_is_bit_set(const BIGNUM *a, int n)
 {
 int i,j;

 if (n < 0) return(0);
 i=n/BN_BITS2;
 j=n%BN_BITS2;
 if (a->top <= i) return(0);
 return((a->d[i]&(((BN_ULONG)1)<<j))?1:0);
 }
