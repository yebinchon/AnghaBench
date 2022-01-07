
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; int* d; int neg; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_MASK2 ;
 int BN_zero (TYPE_1__*) ;
 int bn_fix_top (TYPE_1__*) ;
 int * bn_wexpand (TYPE_1__*,int) ;

int BN_rshift(BIGNUM *r, BIGNUM *a, int n)
 {
 int i,j,nw,lb,rb;
 BN_ULONG *t,*f;
 BN_ULONG l,tmp;

 nw=n/BN_BITS2;
 rb=n%BN_BITS2;
 lb=BN_BITS2-rb;
 if (nw > a->top || a->top == 0)
  {
  BN_zero(r);
  return(1);
  }
 if (r != a)
  {
  r->neg=a->neg;
  if (bn_wexpand(r,a->top-nw+1) == ((void*)0)) return(0);
  }

 f= &(a->d[nw]);
 t=r->d;
 j=a->top-nw;
 r->top=j;

 if (rb == 0)
  {
  for (i=j+1; i > 0; i--)
   *(t++)= *(f++);
  }
 else
  {
  l= *(f++);
  for (i=1; i<j; i++)
   {
   tmp =(l>>rb)&BN_MASK2;
   l= *(f++);
   *(t++) =(tmp|(l<<lb))&BN_MASK2;
   }
  *(t++) =(l>>rb)&BN_MASK2;
  }
 *t=0;
 bn_fix_top(r);
 return(1);
 }
