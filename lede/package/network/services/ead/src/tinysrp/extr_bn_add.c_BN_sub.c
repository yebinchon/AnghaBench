
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int neg; int top; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_uadd (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ BN_ucmp (TYPE_1__ const*,TYPE_1__ const*) ;
 int BN_usub (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;
 int bn_check_top (TYPE_1__ const*) ;
 int * bn_wexpand (TYPE_1__*,int) ;

int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
 {
 int max;
 int add=0,neg=0;
 const BIGNUM *tmp;

 bn_check_top(a);
 bn_check_top(b);






 if (a->neg)
  {
  if (b->neg)
   { tmp=a; a=b; b=tmp; }
  else
   { add=1; neg=1; }
  }
 else
  {
  if (b->neg) { add=1; neg=0; }
  }

 if (add)
  {
  if (!BN_uadd(r,a,b)) return(0);
  r->neg=neg;
  return(1);
  }



 max=(a->top > b->top)?a->top:b->top;
 if (bn_wexpand(r,max) == ((void*)0)) return(0);
 if (BN_ucmp(a,b) < 0)
  {
  if (!BN_usub(r,b,a)) return(0);
  r->neg=1;
  }
 else
  {
  if (!BN_usub(r,a,b)) return(0);
  r->neg=0;
  }
 return(1);
 }
